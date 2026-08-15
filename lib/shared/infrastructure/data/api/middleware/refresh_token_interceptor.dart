import 'dart:collection';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/constants/server/server_request_response_constants.dart';

import 'package:tanlu_management/shared/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/none_auth_app_server_api_client.dart';

import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

@Injectable()
class RefreshTokenInterceptor extends BaseInterceptor {
  RefreshTokenInterceptor(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  var _isRefreshing = false;
  final _queue = Queue<(RequestOptions, ErrorInterceptorHandler)>();

  @override
  int get priority => BaseInterceptor.refreshTokenPriority;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final options = err.response!.requestOptions;
      _onExpiredToken(options: options, handler: handler);
    } else {
      handler.next(err);
    }
  }

  void _putAccessToken({
    required Map<String, dynamic> headers,
    required String accessToken,
  }) {
    headers[ServerRequestResponseConstants.basicAuthorization] =
        '${ServerRequestResponseConstants.bearer} $accessToken';
  }

  Future<void> _onExpiredToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
  }) async {
    _queue.addLast((options, handler));
    if (!_isRefreshing) {
      _isRefreshing = true;
      try {
        final newToken = await sl<AuthRepository>().refreshToken();
        await _onRefreshTokenSuccess(newToken);
      } catch (e) {
        _onRefreshTokenError(e);
        // Force app logout on token failure
        sl<AppBloc>().add(const AppEvent.loggedOut());
      } finally {
        _isRefreshing = false;
        _queue.clear();
      }
    }
  }

  Future<void> _onRefreshTokenSuccess(String newToken) async {
    await Future.wait(
      _queue.map(
        (requestInfo) => _requestWithNewToken(
          options: requestInfo.$1,
          handler: requestInfo.$2,
          newAccessToken: newToken,
        ),
      ),
    );
  }

  void _onRefreshTokenError(Object? error) {
    for (final element in _queue) {
      final options = element.$1;
      final handler = element.$2;
      handler.next(DioException(requestOptions: options, error: error));
    }
  }

  Future<void> _requestWithNewToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
    required String newAccessToken,
  }) async {
    _putAccessToken(headers: options.headers, accessToken: newAccessToken);

    try {
      final response = await _noneAuthAppServerApiClient.dio.fetch(options);
      handler.resolve(response);
    } catch (e) {
      handler.next(DioException(requestOptions: options, error: e));
    }
  }
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:tanlu_management/shared/exception/remote/remote_exception.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/middleware/base_interceptor.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      final bool result = await InternetConnectionChecker().hasConnection;
      if (!result) {
        return handler.reject(
          DioException(
            requestOptions: options,
            error: const RemoteException(kind: RemoteExceptionKind.noInternet),
          ),
        );
      }
      return super.onRequest(options, handler);
    } else {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const RemoteException(kind: RemoteExceptionKind.noInternet),
        ),
      );
    }
  }
}

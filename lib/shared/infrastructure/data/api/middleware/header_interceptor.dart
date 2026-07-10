import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/constants/server/server_request_response_constants.dart';
import 'package:tanlu_management/shared/helper/app_info.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/middleware/base_interceptor.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  HeaderInterceptor(this._appInfo);

  Map<String, dynamic> _headers = {
    'accept': 'application/json, text/plain, */*',
  };
  final AppInfo _appInfo;

  /// Giá trị header x-ant-mobile (app gán sau khi load .env).
  String? _xAntMobile;
  set xAntMobile(String? value) => _xAntMobile = value;

  /// Origin gửi kèm khi dùng x-ant-mobile (tránh 403 "Invalid origin" từ server).
  String? _optionalOrigin;
  set optionalOrigin(String? value) => _optionalOrigin = value;

  @override
  int get priority => BaseInterceptor.headerPriority;

  set headers(Map<String, dynamic> headers) {
    _headers = headers;
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(_headers);
    if (_xAntMobile != null && _xAntMobile!.isNotEmpty) {
      options.headers['x-ant-mobile'] = _xAntMobile!;
      if (_optionalOrigin != null && _optionalOrigin!.isNotEmpty) {
        options.headers['Origin'] = _optionalOrigin!;
      }
    }
    options.headers.addAll(_userAgentClientHeader());
    options.headers.addAll(_getAppInfoHeaders());

    handler.next(options);
  }

  Map<String, dynamic> _userAgentClientHeader() {
    return {
      ServerRequestResponseConstants.userAgentKey:
          '${Platform.operatingSystem} - ${_appInfo.versionName}',
    };
  }

  Map<String, dynamic> _getAppInfoHeaders() {
    return {
      'is-app': '1',
      ServerRequestResponseConstants.currentVersionKey: _appInfo.versionName,
      ServerRequestResponseConstants.platformKey: Platform.isAndroid
          ? 'android'
          : 'ios',
    };
  }
}

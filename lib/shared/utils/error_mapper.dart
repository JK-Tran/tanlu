import 'package:tanlu_management/core/constants/app_strings.dart';
import 'package:tanlu_management/shared/exception/base/app_exception.dart';
import 'package:tanlu_management/shared/exception/remote/remote_exception.dart';
import 'package:tanlu_management/shared/exception/uncaught/app_uncaught_exception.dart';
import 'package:tanlu_management/l10n/l10n.dart';

abstract final class ErrorMapper {
  static String getMessage(Object error) {
    if (error is AppUncaughtException) {
      final root = error.rootError;
      if (root is AppException) {
        return _mapAppException(root) ?? AppStrings.unknownError;
      }
      return S.current.unknownError;
    }

    if (error is AppException) {
      return _mapAppException(error) ?? AppStrings.unknownError;
    }

    return S.current.unknownError;
  }

  static String? _mapAppException(AppException exception) {
    if (exception is RemoteException) {
      switch (exception.kind) {
        case RemoteExceptionKind.noInternet:
        case RemoteExceptionKind.network:
          return S.current.networkError;
        case RemoteExceptionKind.timeout:
          return S.current.timeoutError;
        case RemoteExceptionKind.sessionExpired:
        case RemoteExceptionKind.refreshTokenFailed:
          return S.current.sessionExpiredError;
        case RemoteExceptionKind.serverDefined:
          if (exception.httpErrorCode == 401) {
            return S.current.unauthorizedError;
          } else if (exception.httpErrorCode == 403) {
            return S.current.forbiddenError;
          } else if (exception.httpErrorCode == 404) {
            return S.current.notFoundError;
          }
          final serverMsg = exception.generalServerMessage;
          if (serverMsg != null && serverMsg.isNotEmpty) {
            return serverMsg;
          }
          return S.current.serverError;
        case RemoteExceptionKind.serverUndefined:
          return S.current.serverError;
        default:
          return S.current.unknownError;
      }
    }
    return null;
  }
}

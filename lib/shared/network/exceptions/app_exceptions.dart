/// Exception chuẩn của app. Quy tắc: kế thừa [AppException].
abstract class AppException implements Exception {
  const AppException(this.message, [this.statusCode]);

  final String message;
  final int? statusCode;

  @override
  String toString() => message;
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'Network error']);
}

class ServerException extends AppException {
  const ServerException([super.message = 'Server error', super.statusCode]);
}

class UnauthorizedException extends AppException {
  const UnauthorizedException([
    super.message = 'Unauthorized',
    super.statusCode,
  ]);
}

class ValidationException extends AppException {
  const ValidationException([super.message = 'Validation error']);
}

class UnknownException extends AppException {
  const UnknownException([super.message = 'Unknown error']);
}

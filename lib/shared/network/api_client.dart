import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/network/dio_client.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/network/rest_method.dart';
import 'package:tanlu_management/shared/network/mappers/success_response_mapper.dart';

export 'package:tanlu_management/shared/network/mappers/success_response_mapper.dart';
export 'package:tanlu_management/shared/network/rest_method.dart';

@lazySingleton
class ApiClient {
  ApiClient(this._dio);

  final DioClient _dio;

  Dio get _http => _dio.dio;

  /// Gọi API sử dụng Mapper Pattern (Quy chuẩn chuyên nghiệp).
  ///
  /// [method]: GET, POST, PUT, DELETE...
  /// [path]: URL (endpoint) cuối cùng.
  /// [body]: Data gửi lên server.
  /// [decoder]: Hàm fromJson của Model, dùng để parse dữ liệu sang Model.
  /// [successResponseMapperType]: Loại JSON trả về từ Server để API Client tự động bóc tách. Mặc định là cấu trúc `{"data": {...}}`.
  Future<O?> request<I extends Object, O extends Object>({
    required RestMethod method,
    required String path,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Decoder<I>? decoder,
    SuccessResponseMapperType successResponseMapperType =
        SuccessResponseMapperType.dataJsonObject,
  }) async {
    try {
      final response = await _requestByMethod(
        method: method,
        path: path,
        body: body,
        queryParameters: queryParameters,
      );

      if (response.data == null) {
        return null;
      }

      // Xử lý Check Server Status: Code, Success... (Tùy thuộc backend chuẩn của dự án)
      final resBody = _parseBody(response.data);
      if (resBody != null && resBody['success'] == false) {
        throw ServerException(
          resBody['message']?.toString() ?? 'Thao tác không thành công',
        );
      }

      // Khởi tạo Mapper chiến lược tương ứng và parse
      return BaseSuccessResponseMapper<I, O>.fromType(
        successResponseMapperType,
      ).map(response: resBody ?? response.data, decoder: decoder);
    } on DioException catch (error) {
      // Bọc lỗi cục bộ (nếu cần xử lý Dio Error specifically)
      throw _handleDioError(error);
    } catch (error) {
      if (error is AppException) rethrow; // Ném nguyên lỗi nội bộ đã xử lý
      throw UnknownException('Lỗi không xác định: $error');
    }
  }

  Future<Response<dynamic>> _requestByMethod({
    required RestMethod method,
    required String path,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) {
    switch (method) {
      case RestMethod.get:
        return _http.get(
          path,
          queryParameters:
              queryParameters ??
              (body is Map ? body as Map<String, dynamic>? : null),
        );
      case RestMethod.post:
        return _http.post(path, data: body, queryParameters: queryParameters);
      case RestMethod.put:
        return _http.put(path, data: body, queryParameters: queryParameters);
      case RestMethod.patch:
        return _http.patch(path, data: body, queryParameters: queryParameters);
      case RestMethod.delete:
        return _http.delete(path, data: body, queryParameters: queryParameters);
    }
  }

  Map<String, dynamic>? _parseBody(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    if (data is String) {
      try {
        return jsonDecode(data) as Map<String, dynamic>?;
      } catch (_) {}
    }
    return null;
  }

  AppException _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout) {
      return const NetworkException(
        'Kết nối máy chủ bị quá hạn. Vui lòng thử lại!',
      );
    }

    if (error.response?.statusCode == 401) {
      return const UnauthorizedException('Phiên đăng nhập hết hạn.');
    }

    // Cố gắng bóc tách lỗi từ JSON response của server
    final errorData = _parseBody(error.response?.data);
    if (errorData != null && errorData.containsKey('message')) {
      return ServerException(errorData['message'], error.response?.statusCode);
    }

    return NetworkException(error.message ?? 'Lỗi kết nối mạng');
  }
}

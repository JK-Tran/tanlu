import '../exceptions/app_exceptions.dart';

typedef Decoder<T> = T Function(Map<String, dynamic> json);

enum SuccessResponseMapperType {
  dataJsonObject, // JSON trả về có dạng: {"success": true, "data": {...}}
  dataJsonArray, // JSON trả về có dạng: {"success": true, "data": [...]}
  jsonObject, // JSON trả về thẳng Object: {...}
  jsonArray, // JSON trả về thẳng Mảng: [...]
  plain, // Không bóc tách gì cả, trả về nguyên bản
}

abstract class BaseSuccessResponseMapper<I extends Object, O extends Object> {
  const BaseSuccessResponseMapper();

  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    return switch (type) {
      SuccessResponseMapperType.dataJsonObject =>
        DataJsonObjectResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.dataJsonArray =>
        DataJsonArrayResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.jsonObject =>
        JsonObjectResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.jsonArray =>
        JsonArrayResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.plain =>
        PlainResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
    };
  }

  O? map({required dynamic response, Decoder<I>? decoder}) {
    if (response == null) return null;
    try {
      return mapToDataModel(response: response, decoder: decoder);
    } catch (e) {
      throw ServerException('Lỗi khi phân tích dữ liệu trả về từ máy chủ: $e');
    }
  }

  O? mapToDataModel({required dynamic response, Decoder<I>? decoder});
}

class DataJsonObjectResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    if (response is Map<String, dynamic> && response.containsKey('data')) {
      final data = response['data'];
      if (data == null) return null;
      if (decoder != null && data is Map<String, dynamic>) {
        return decoder(data);
      }
      return data as T?;
    }
    throw const ServerException('Không tìm thấy dữ liệu (data) hợp lệ trong JSON');
  }
}

class DataJsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, List<T>> {
  @override
  List<T>? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    if (response is Map<String, dynamic> && response.containsKey('data')) {
      final data = response['data'];
      if (data == null) return <T>[];
      if (data is List) {
        if (decoder != null) {
          return data
              .map((e) => decoder(e as Map<String, dynamic>))
              .toList();
        }
        return data.cast<T>();
      }
    }
    throw const ServerException('Danh sách trả về không đúng định dạng Mảng');
  }
}

class JsonObjectResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    if (response is Map<String, dynamic>) {
      if (decoder != null) return decoder(response);
      return response as T?;
    }
    throw const ServerException('JSON trả về không phải là Object');
  }
}

class JsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, List<T>> {
  @override
  List<T>? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    if (response is List) {
      if (decoder != null) {
        return response
            .map((e) => decoder(e as Map<String, dynamic>))
            .toList();
      }
      return response.cast<T>();
    }
    throw const ServerException('JSON trả về không phải là Danh sách (Mảng)');
  }
}

class PlainResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    return response as T?;
  }
}

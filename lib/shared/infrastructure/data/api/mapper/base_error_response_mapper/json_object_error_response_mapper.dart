import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/exception/remote/server_error.dart';
import 'package:tanlu_management/shared/exception/remote/server_error_detail.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';

@Injectable()
class JsonObjectErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? data) {
    if (data != null && data['errors'] is List) {
      final {'errors': [{'message': String? value}]} = data;
      return ServerError(
        errors:
            (data['errors'] as List<dynamic>?)
                ?.map(
                  (jsonObject) => ServerErrorDetail(
                    // serverStatusCode: jsonObject['code'],
                    message: jsonObject['message'],
                  ),
                )
                .toList(growable: false) ??
            [],
        generalMessage: value,
      );
    }

    final dynamic messages = data?['_messages'];
    String? message;
    if (messages is List && messages.isNotEmpty) {
      message = messages.first.toString();
    } else if (data?['error'] != null) {
      message = data!['error'].toString();
    } else if (data?['message'] != null) {
      message = data!['message'].toString();
    }

    return ServerError(
      generalServerStatusCode: data?['_status'],
      generalServerErrorId: data?['error_code'],
      generalMessage: message,
    );
  }
}

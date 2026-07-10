import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/exception/remote/server_error.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';

@Injectable()
class LineErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? json) {
    return ServerError(generalMessage: json?['error_description'] as String?);
  }
}

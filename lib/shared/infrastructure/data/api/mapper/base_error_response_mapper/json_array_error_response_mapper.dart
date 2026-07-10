import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/exception/remote/server_error.dart';
import 'package:tanlu_management/shared/exception/remote/server_error_detail.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';

@Injectable()
// ignore: avoid-dynamic
class JsonArrayErrorResponseMapper
    extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  // ignore: avoid-dynamic
  ServerError mapToServerError(List<dynamic>? data) {
    return ServerError(
      errors:
          data
              ?.map(
                (jsonObject) => ServerErrorDetail(
                  serverStatusCode: jsonObject['code'] as int?,
                  message: jsonObject['message'] as String?,
                ),
              )
              .toList(growable: false) ??
          [],
    );
  }
}

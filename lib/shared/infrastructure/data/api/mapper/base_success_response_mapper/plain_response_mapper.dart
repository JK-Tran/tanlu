import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

class PlainResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    assert(decoder == null);

    return response is T ? response : null;
  }
}

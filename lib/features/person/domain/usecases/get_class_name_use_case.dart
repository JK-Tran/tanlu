import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/person/data/sources/person_firestore_source.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_class_name_use_case.freezed.dart';

@Injectable()
class GetClassNameUseCase
    extends BaseFutureUseCase<GetClassNameInput, GetClassNameOutput> {
  const GetClassNameUseCase(this._source);

  final PersonFirestoreSource _source;

  @protected
  @override
  Future<GetClassNameOutput> buildUseCase(GetClassNameInput input) async {
    final className = await _source.getClassNameById(input.classId);
    return GetClassNameOutput(className: className);
  }
}

@freezed
class GetClassNameInput extends BaseInput with _$GetClassNameInput {
  const factory GetClassNameInput({required String classId}) =
      _GetClassNameInput;
}

@freezed
class GetClassNameOutput extends BaseOutput with _$GetClassNameOutput {
  const factory GetClassNameOutput({@Default('') String className}) =
      _GetClassNameOutput;
}

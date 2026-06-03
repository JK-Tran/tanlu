import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/parent_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/student_parent_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student_parent.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class StudentParentDataMapper
    extends BaseDataMapper<StudentParentData, StudentParent>
    with DataMapperMixin<StudentParentData, StudentParent> {
  StudentParentDataMapper(this._parentDataMapper);

  final ParentDataMapper _parentDataMapper;

  @override
  StudentParent mapToEntity(StudentParentData? data) {
    return StudentParent(
      id: data?.id ?? 0,
      studentId: data?.studentId ?? 0,
      parentId: data?.parentId ?? 0,
      relationship: data?.relationship ?? '',
      isPrimaryContact: data?.isPrimaryContact ?? false,
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      parent: _parentDataMapper.mapToEntity(data?.parent),
    );
  }

  @override
  StudentParentData mapToData(StudentParent entity) {
    return StudentParentData(
      id: entity.id,
      studentId: entity.studentId,
      parentId: entity.parentId,
      relationship: entity.relationship,
      isPrimaryContact: entity.isPrimaryContact,
      createdAt: entity.createdAt?.toIso8601String(),
      parent: _parentDataMapper.mapToData(entity.parent),
    );
  }
}

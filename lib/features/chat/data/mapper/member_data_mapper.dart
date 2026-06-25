import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/member_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class MemberDataMapper extends BaseDataMapper<MemberData, Participant>
    with DataMapperMixin<MemberData, Participant> {
  @override
  Participant mapToEntity(MemberData? data) {
    return Participant(
      userId: data?.userId ?? '',
      fullName: data?.fullName ?? '',
      avatar: data?.avatar ?? '',
      role: data?.role ?? '',
      unreadCount: data?.unreadCount ?? 0,
      lastReadAt: data?.lastReadAt,
    );
  }

  @override
  MemberData mapToData(Participant entity) {
    return MemberData(
      userId: entity.userId.isEmpty ? null : entity.userId,
      fullName: entity.fullName,
      avatar: entity.avatar.isEmpty ? null : entity.avatar,
      role: entity.role,
      unreadCount: entity.unreadCount,
      lastReadAt: entity.lastReadAt,
    );
  }
}

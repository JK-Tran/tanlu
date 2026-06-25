import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/friendship_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/friendship.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class FriendshipDataMapper extends BaseDataMapper<FriendshipData, Friendship>
    with DataMapperMixin<FriendshipData, Friendship> {
  @override
  Friendship mapToEntity(FriendshipData? data) {
    return Friendship(
      id: data?.id ?? '',
      userIds: data?.userIds ?? const [],
      createdAt: data?.createdAt,
    );
  }

  @override
  FriendshipData mapToData(Friendship entity) {
    return FriendshipData(
      id: entity.id.isEmpty ? null : entity.id,
      userIds: entity.userIds,
      createdAt: entity.createdAt,
    );
  }
}

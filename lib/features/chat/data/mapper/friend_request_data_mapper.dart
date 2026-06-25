import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/friend_request_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class FriendRequestDataMapper
    extends BaseDataMapper<FriendRequestData, FriendRequest>
    with DataMapperMixin<FriendRequestData, FriendRequest> {
  @override
  FriendRequest mapToEntity(FriendRequestData? data) {
    return FriendRequest(
      id: data?.id ?? '',
      fromUserId: data?.fromUserId ?? '',
      toUserId: data?.toUserId ?? '',
      status: data?.status ?? 'pending',
      createdAt: data?.createdAt,
    );
  }

  @override
  FriendRequestData mapToData(FriendRequest entity) {
    return FriendRequestData(
      id: entity.id.isEmpty ? null : entity.id,
      fromUserId: entity.fromUserId,
      toUserId: entity.toUserId,
      status: entity.status,
      createdAt: entity.createdAt,
    );
  }
}

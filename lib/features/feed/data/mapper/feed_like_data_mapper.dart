import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_like_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class FeedLikeDataMapper extends BaseDataMapper<FeedLikeData, FeedLike>
    with DataMapperMixin<FeedLikeData, FeedLike> {
  @override
  FeedLike mapToEntity(FeedLikeData? model) {
    final userId = model?.userId ?? '';
    return FeedLike(
      author: Author(
        id: userId,
        fullName: model?.fullName ?? '',
        role: model?.role ?? '',
        avatar: model?.avatar ?? '',
      ),
      likedAt: model?.createdAt,
      updatedAt: model?.updatedAt,
    );
  }

  @override
  FeedLikeData mapToData(FeedLike entity) {
    return FeedLikeData(
      userId: entity.author.id.isEmpty ? null : entity.author.id,
      fullName: entity.author.fullName,
      avatar: entity.author.avatar.isEmpty ? null : entity.author.avatar,
      role: entity.author.role,
      createdAt: entity.likedAt,
      updatedAt: entity.updatedAt,
      status: 'active',
    );
  }
}

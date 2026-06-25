import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class FeedDataMapper extends BaseDataMapper<FeedData, Feed>
    with DataMapperMixin<FeedData, Feed> {
  @override
  Feed mapToEntity(FeedData? model) {
    return Feed(
      id: model?.id ?? '',
      author: Author(
        id: model?.authorId ?? '',
        fullName: model?.fullName ?? '',
        role: model?.role ?? '',
        avatar: model?.avatar ?? '',
        className: model?.className,
      ),
      classId: model?.classId ?? '',
      className: model?.className ?? '',
      centerId: model?.centerId ?? '',
      content: model?.content ?? '',
      images: model?.images ?? const [],
      videos: model?.videos ?? const [],
      likeCount: model?.likeCount ?? 0,
      commentCount: model?.commentCount ?? 0,
      allowComments: model?.allowComments ?? true,
      isPublic: model?.isPublic ?? false,
      status: model?.status ?? 'active',
      createdAt: model?.createdAt,
      updatedAt: model?.updatedAt,
    );
  }

  @override
  FeedData mapToData(Feed entity) {
    return FeedData(
      id: entity.id.isEmpty ? null : entity.id,
      authorId: entity.author.id,
      fullName: entity.author.fullName,
      avatar: entity.author.avatar.isEmpty ? null : entity.author.avatar,
      role: entity.author.role,
      classId: entity.classId,
      className: entity.className,
      centerId: entity.centerId,
      content: entity.content,
      images: entity.images.isEmpty ? null : entity.images,
      videos: entity.videos.isEmpty ? null : entity.videos,
      likeCount: entity.likeCount,
      commentCount: entity.commentCount,
      allowComments: entity.allowComments,
      isPublic: entity.isPublic,
      status: entity.status,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

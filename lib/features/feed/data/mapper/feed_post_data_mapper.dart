import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_post_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

import 'feed_author_data_mapper.dart';

@Injectable()
class FeedPostDataMapper extends BaseDataMapper<FeedPostData, FeedPost> {
  FeedPostDataMapper(this._feedAuthorDataMapper);

  final FeedAuthorDataMapper _feedAuthorDataMapper;

  @override
  FeedPost mapToEntity(FeedPostData? data) {
    return FeedPost(
      id: data?.id ?? 0,
      authorId: data?.authorId ?? 0,
      centerId: data?.centerId ?? 0,
      classId: data?.classId ?? 0,
      content: data?.content ?? '',
      images: data?.images ?? const [],
      isPublic: data?.isPublic ?? false,
      status: data?.status ?? '',
      createdAt: data?.createdAt,
      updatedAt: data?.updatedAt,
      likeCount: data?.likeCount ?? 0,
      isLikedByMe: data?.isLikedByMe ?? false,
      commentCount: data?.commentCount ?? 0,
      author: _feedAuthorDataMapper.mapToEntity(data?.author),
    );
  }

  FeedPostData mapToData(FeedPost? entity) {
    return FeedPostData(
      id: entity?.id ?? 0,
      authorId: entity?.authorId ?? 0,
      centerId: entity?.centerId ?? 0,
      classId: entity?.classId ?? 0,
      content: entity?.content ?? '',
      images: entity?.images ?? const [],
      isPublic: entity?.isPublic ?? false,
      status: entity?.status ?? '',
      createdAt: entity?.createdAt,
      updatedAt: entity?.updatedAt,
      likeCount: entity?.likeCount ?? 0,
      isLikedByMe: entity?.isLikedByMe ?? false,
      commentCount: entity?.commentCount ?? 0,
      author: _feedAuthorDataMapper.mapToData(entity?.author),
    );
  }
}

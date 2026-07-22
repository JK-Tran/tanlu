import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_comment_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

import 'feed_author_data_mapper.dart';

@Injectable()
class FeedCommentDataMapper
    extends BaseDataMapper<FeedCommentData, FeedComment> {
  FeedCommentDataMapper(this._feedAuthorDataMapper);

  final FeedAuthorDataMapper _feedAuthorDataMapper;

  @override
  FeedComment mapToEntity(FeedCommentData? data) {
    return FeedComment(
      id: data?.id ?? 0,
      postId: data?.postId ?? 0,
      userId: data?.userId ?? 0,
      content: data?.content ?? '',
      parentId: data?.parentId,
      likeCount: data?.likeCount ?? 0,
      isLikedByMe: data?.isLikedByMe ?? false,
      createdAt: data?.createdAt,
      updatedAt: data?.updatedAt,
      author: _feedAuthorDataMapper.mapToEntity(data?.author),
      replies: data?.replies == null
          ? []
          : data!.replies!.map((e) => mapToEntity(e)).toList().reversed.toList(),
    );
  }

  FeedCommentData mapToData(FeedComment? entity) {
    return FeedCommentData(
      id: entity?.id,
      postId: entity?.postId,
      userId: entity?.userId,
      content: entity?.content,
      parentId: entity?.parentId,
      likeCount: entity?.likeCount,
      isLikedByMe: entity?.isLikedByMe,
      createdAt: entity?.createdAt,
      updatedAt: entity?.updatedAt,
      author: _feedAuthorDataMapper.mapToData(entity?.author),
      replies: entity?.replies.map((e) => mapToData(e)).toList() ?? [],
    );
  }
}

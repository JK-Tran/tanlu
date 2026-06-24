import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/comment_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class CommentDataMapper extends BaseDataMapper<CommentData, Comment>
    with DataMapperMixin<CommentData, Comment> {
  Comment mapToEntityWithContext(
    CommentData? model, {
    required String feedId,
    String feedAuthorId = '',
    bool isLiked = false,
  }) {
    final authorId = model?.authorId ?? '';
    return Comment(
      id: model?.id ?? '',
      feedId: feedId,
      author: Author(
        id: authorId,
        fullName: model?.fullName ?? '',
        role: model?.role ?? '',
        avatar: model?.avatar ?? '',
      ),
      content: model?.content ?? '',
      parentId: model?.parentId,
      likeCount: model?.likeCount ?? 0,
      isLiked: isLiked,
      isFeedAuthor: feedAuthorId.isNotEmpty && authorId == feedAuthorId,
      createdAt: model?.createdAt,
      updatedAt: model?.updatedAt,
    );
  }

  @override
  Comment mapToEntity(CommentData? model) {
    return mapToEntityWithContext(model, feedId: '');
  }

  @override
  CommentData mapToData(Comment entity) {
    return CommentData(
      id: entity.id.isEmpty ? null : entity.id,
      authorId: entity.author.id,
      fullName: entity.author.fullName,
      avatar: entity.author.avatar.isEmpty ? null : entity.author.avatar,
      role: entity.author.role,
      content: entity.content,
      parentId: entity.parentId,
      likeCount: entity.likeCount,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      status: 'active',
    );
  }
}

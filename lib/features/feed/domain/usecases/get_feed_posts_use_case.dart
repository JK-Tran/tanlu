import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/constants/ui/paging_constants.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_load_more_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';

part 'get_feed_posts_use_case.freezed.dart';

@Injectable()
class GetFeedPostsUseCase
    extends BaseLoadMoreUseCase<GetFeedPostsInput, FeedPost> {
  GetFeedPostsUseCase(this._repository)
    : super(initPage: PagingConstants.initialPage);

  final FeedRepository _repository;

  @protected
  @override
  Future<PagedList<FeedPost>> buildUseCase(GetFeedPostsInput input) async {
    return _repository.getFeedPosts(
      filter: input.filter,
      page: page,
      limit: input.limit,
    );
  }
}

@freezed
class GetFeedPostsInput extends BaseInput with _$GetFeedPostsInput {
  const factory GetFeedPostsInput({String? filter, @Default(10) int limit}) =
      _GetFeedPostsInput;
}

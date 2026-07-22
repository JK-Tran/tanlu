import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_author_data.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_author.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class FeedAuthorDataMapper extends BaseDataMapper<FeedAuthorData, FeedAuthor> {
  @override
  FeedAuthor mapToEntity(FeedAuthorData? data) {
    return FeedAuthor(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      avatarUrl: data?.avatarUrl,
    );
  }

  FeedAuthorData mapToData(FeedAuthor? entity) {
    return FeedAuthorData(
      id: entity?.id ?? 0,
      fullName: entity?.fullName ?? '',
      avatarUrl: entity?.avatarUrl,
    );
  }
}

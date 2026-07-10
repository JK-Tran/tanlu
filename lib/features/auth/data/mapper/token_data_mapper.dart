import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/model/token_data.dart';
import 'package:tanlu_management/features/auth/domain/entity/token.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class TokenDataMapper extends BaseDataMapper<TokenData, Token>
    with DataMapperMixin<TokenData, Token> {
  TokenDataMapper();

  @override
  Token mapToEntity(TokenData? data) {
    return Token(token: data?.token ?? '');
  }

  @override
  TokenData mapToData(Token entity) {
    return TokenData(token: entity.token);
  }
}

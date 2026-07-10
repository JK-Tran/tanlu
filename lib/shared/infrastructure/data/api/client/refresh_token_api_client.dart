import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/constants/url_constants.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/dio_builder.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/middleware/access_token_interceptor.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/middleware/header_interceptor.dart';

@LazySingleton()
class RefreshTokenApiClient extends RestApiClient {
  RefreshTokenApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
  ) : super(
        dio: DioBuilder.createDio(
          options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
          interceptors: [
            headerInterceptor as Interceptor,
            accessTokenInterceptor as Interceptor,
          ],
        ),
      );
}

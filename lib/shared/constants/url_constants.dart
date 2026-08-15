import 'package:tanlu_management/shared/constants/env_constants.dart';
import 'package:tanlu_management/shared/model/shared_enum.dart';

class UrlConstants {
  const UrlConstants._();

  static String get apiVersion => '/api';

  static String get appApiBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.qa:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.staging:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      // case Flavor.production:
      //   return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.production:
        return 'http://172.16.0.119:8787$apiVersion';
    }
  }

  /// Web application base URL
  static String get webAppBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.qa:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.staging:
        return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      // case Flavor.production:
      //   return 'https://tanlu-api.lvthanh-work.workers.dev$apiVersion';
      case Flavor.production:
        return 'http://172.16.0.119:8787$apiVersion';
    }
  }
}

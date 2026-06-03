import 'package:tanlu_management/core/config/flavor_config.dart';

/// Cấu hình theo flavor: base URL, app name, v.v.
abstract final class AppEnv {
  static String get baseUrl {
    switch (Flavor.current) {
      case Flavor.develop:
        //return 'http://172.16.0.79:5000';
      return 'http://180.93.2.137:10003';
      case Flavor.staging:
        return 'http://180.93.2.137:10003';
      case Flavor.production:
        //return 'http://172.16.0.79:5000';
        return 'http://180.93.2.137:10003';
    }
  }

  static String get apiBaseUrl => '$baseUrl/api';
}

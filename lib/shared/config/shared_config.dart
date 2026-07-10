import 'package:get_it/get_it.dart';
import 'package:tanlu_management/shared/config/config.dart';
import 'package:tanlu_management/shared/helper/app_info.dart';

import '../di/di.dart' as di;

class SharedConfig extends Config {
  SharedConfig._();

  factory SharedConfig.getInstance() {
    return _instance;
  }

  static final SharedConfig _instance = SharedConfig._();

  @override
  Future<void> config() async {
    try {
      await di.configureInjection();
      await GetIt.instance.get<AppInfo>().init();
      // await AntoreeCrashlytics.initialize();
      // await AntoreeAnalytics.initialize();
      // await AntoreeMessaging.initialize();
      // await AntoreeRemoteConfig.initialize();
    } catch (e) {
      rethrow;
    }
  }
}

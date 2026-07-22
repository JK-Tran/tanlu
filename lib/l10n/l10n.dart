import 'package:flutter/widgets.dart';
import 'package:tanlu_management/l10n/app_localizations.dart';
import 'package:tanlu_management/core/router/app_router.dart';

export 'package:tanlu_management/l10n/app_localizations.dart';

extension L10nBuildContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

abstract final class S {
  static AppLocalizations get current {
    final context = rootNavigatorKey.currentContext;
    if (context != null) {
      return AppLocalizations.of(context) ??
          lookupAppLocalizations(const Locale('vi'));
    }
    return lookupAppLocalizations(const Locale('vi'));
  }
}

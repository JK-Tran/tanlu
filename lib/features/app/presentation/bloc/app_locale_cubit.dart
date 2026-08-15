import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@lazySingleton
class AppLocaleCubit extends Cubit<Locale> {
  AppLocaleCubit(this._appPreferences)
      : super(Locale(_appPreferences.languageCode.isEmpty ? 'vi' : _appPreferences.languageCode));

  final AppPreferences _appPreferences;

  void changeLanguage(String languageCode) {
    if (state.languageCode == languageCode) return;
    
    final newLocale = Locale(languageCode);
    _appPreferences.saveLanguageCode(languageCode);
    emit(newLocale);
  }
}

import 'package:tanlu_management/core/utils/validators.dart';

mixin ValidationMixin {
  String? validateEmail(String? value) => Validators.email(value);
  String? validateRequired(String? value, [String name = 'Field']) =>
      Validators.required(value, name);
  String? validatePassword(String? value) => Validators.password(value);
}

extension StringExtension on String {
  String get trimAll => replaceAll(RegExp(r'\s+'), ' ');
  bool get isBlank => trim().isEmpty;
}

extension StringExtension on String {
  String get trimAll => replaceAll(RegExp(r'\s+'), ' ');
  bool get isBlank => trim().isEmpty;
  String get capitalize =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}

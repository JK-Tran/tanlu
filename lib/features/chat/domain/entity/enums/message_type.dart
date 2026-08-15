enum MessageType {
  text('text'),
  image('image'),
  file('file');

  final String value;
  const MessageType(this.value);

  static MessageType fromString(String? str) {
    return MessageType.values.firstWhere(
      (e) => e.value == str,
      orElse: () => MessageType.text,
    );
  }
}

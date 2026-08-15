import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum MessageStatus {
  sent('sent'),
  read('read'),
  sending('sending'),
  error('error');

  final String value;
  const MessageStatus(this.value);

  static MessageStatus fromString(String? str) {
    return MessageStatus.values.firstWhere(
      (e) => e.value == str,
      orElse: () => MessageStatus.sent,
    );
  }
}

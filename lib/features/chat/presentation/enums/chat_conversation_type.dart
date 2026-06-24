enum ChatConversationType {
  group,
  direct;

  bool get isGroup => this == ChatConversationType.group;
}

class Message {
  const Message({
    required this.sender,
    required this.content,
  });

  final String sender;
  final String content;

  factory Message.fromMap(Map<String, dynamic> map) => Message(
        sender: map['sender'] as String? ?? '',
        content: map['content'] as String? ?? '',
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'sender': sender,
        'content': content,
      };
}

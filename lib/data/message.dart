class Message {
  const Message({
    required this.sender,
    required this.content,
    required this.timestamp,
  });

  final String sender;
  final String content;
  final DateTime timestamp;

  factory Message.fromMap(Map<String, dynamic> map) => Message(
        sender: map['sender'] as String? ?? '',
        content: map['content'] as String? ?? '',
        timestamp: map['timestamp'] as DateTime? ?? DateTime(1970, 1, 1, 0, 0),
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'sender': sender,
        'content': content,
        'timestamp': timestamp
      };
}

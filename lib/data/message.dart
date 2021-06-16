class Message {
  const Message({
    required this.sender,
    required this.content,
    required this.timestamp,
  });

  final String sender;
  final String content;
  final DateTime timestamp;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        sender: json['sender'] as String? ?? '',
        content: json['content'] as String? ?? '',
        timestamp: json['timestamp'] as DateTime? ?? DateTime(1970, 1, 1, 0, 0),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender': sender,
        'content': content,
        'timestamp': timestamp
      };
}

import 'dart:async';

import '../../../data/message.dart';

abstract class MessageRpository {
  Stream<List<Message>> getMessages();
  Future<List<Message>> getMessagesOnce();

  Future<void> sendMessage(Message message);
}

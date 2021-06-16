import '../../data/message.dart';

abstract class MessageInteractor {
  Stream<List<Message>> getMessages();
  Future<void> sendMessage();
}

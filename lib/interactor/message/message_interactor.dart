import '../../data/message.dart';
import 'repository/message_repository.dart';

class MessageInteractor {
  const MessageInteractor({required this.repo});

  final MessageRepository repo;

  Stream<List<Message>> getMessages() => repo.getMessages();

  Future<void> sendMessage(Message message) => repo.sendMessage(message);
}

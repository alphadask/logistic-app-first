import '../models/message.dart';

abstract class ChatRepository {
  Stream<List<ChatMessage>> watchMessages(String chatId);
  Future<void> sendMessage(ChatMessage message);
}

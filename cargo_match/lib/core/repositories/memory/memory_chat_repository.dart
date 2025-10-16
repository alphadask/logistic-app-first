import 'dart:async';

import '../../models/message.dart';
import '../chat_repository.dart';

class MemoryChatRepository implements ChatRepository {
  final Map<String, List<ChatMessage>> _messages = {};
  final StreamController<List<ChatMessage>> _controller = StreamController.broadcast();

  @override
  Stream<List<ChatMessage>> watchMessages(String chatId) {
    final current = _messages[chatId] ?? [];
    _controller.add(current);
    return _controller.stream;
  }

  @override
  Future<void> sendMessage(ChatMessage message) async {
    final list = _messages.putIfAbsent(message.chatId, () => []);
    list.add(message);
    _controller.add(List.unmodifiable(list));
  }
}

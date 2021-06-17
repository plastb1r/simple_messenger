import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:provider/provider.dart';
import 'package:relation/relation.dart';

import '../../../data/message.dart';
import '../../../interactor/message/message_interactor.dart';
import 'global_chat_screen_wm.dart';

class GlobalChatScreen extends CoreMwwmWidget<GlobalChatScreenWidgetModel> {
  GlobalChatScreen({required this.username})
      : super(
          widgetModelBuilder: (context) {
            final interactor = context.read<MessageInteractor>();
            final wmDependencies = context.read<WidgetModelDependencies>();

            return GlobalChatScreenWidgetModel(
              wmDependencies,
              username: username,
              messageInteractor: interactor,
            );
          },
        );

  final String username;

  @override
  _GlobalChatScreenState createWidgetState() => _GlobalChatScreenState();
}

class _GlobalChatScreenState
    extends WidgetState<GlobalChatScreen, GlobalChatScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chat Example'),
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamedStateBuilder<List<Message>>(
                streamedState: wm.messageListState,
                builder: _messageListBuilder,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(controller: wm.messageController),
                    ),
                    IconButton(
                      onPressed: wm.sendMessageAction,
                      icon: const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _messageListBuilder(BuildContext context, List<Message>? messages) =>
      ListView.builder(
        itemBuilder: (_, index) {
          if (messages != null) {
            final message = messages[index];
            final time = message.timestamp;

            return Align(
              alignment: wm.username == message.sender
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(message.sender),
                    Text(message.content),
                    Text('${time.hour}:${time.minute}'),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: Text('Пусто'),
            );
          }
        },
      );
}

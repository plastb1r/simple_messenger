import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:provider/provider.dart';

import '../../../interactor/message/message_interactor.dart';
import 'global_chat_screen_wm.dart';

class GlobalChatScreen extends CoreMwwmWidget<GlobalChatScreenWidgetModel> {
  GlobalChatScreen()
      : super(
          widgetModelBuilder: (context) {
            final interactor = context.read<MessageInteractor>();
            final wmDependencies = context.read<WidgetModelDependencies>();

            return GlobalChatScreenWidgetModel(
              wmDependencies,
              messageInteractor: interactor,
              messageController: TextEditingController(),
            );
          },
        );

  @override
  _GlobalChatScreenState createWidgetState() => _GlobalChatScreenState();
}

class _GlobalChatScreenState
    extends WidgetState<GlobalChatScreen, GlobalChatScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

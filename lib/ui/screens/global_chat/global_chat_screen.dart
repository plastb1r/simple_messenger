import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

import 'global_chat_screen_component.dart';
import 'global_chat_screen_wm.dart';

class GlobalChatScreen extends MwwmWidget<GlobalChatScreenComponent> {
  GlobalChatScreen()
      : super(
          dependenciesBuilder: (context) => GlobalChatScreenComponent(context),
          widgetStateBuilder: () => _GlobalChatScreenState(),
          widgetModelBuilder: (_) => GlobalChatScreenWidgetModel(
            const WidgetModelDependencies(),
          ),
        );
}

class _GlobalChatScreenState
    extends OldWidgetState<GlobalChatScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';

import '../../../utils/default_error_handler.dart';
import 'global_chat_screen_wm.dart';

class GlobalChatScreen extends CoreMwwmWidget<GlobalChatScreenWidgetModel> {
  GlobalChatScreen()
      : super(
          widgetModelBuilder: (context) => GlobalChatScreenWidgetModel(
            WidgetModelDependencies(
              errorHandler: DefaultErrorHandler(),
            ),
            TextEditingController(),
          ),
        );

  @override
  _GlobalChatScreenState createWidgetState() => _GlobalChatScreenState();
}

class _GlobalChatScreenState
    extends WidgetState<GlobalChatScreen, GlobalChatScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

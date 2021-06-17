import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';

import '../../../interactor/message/message_interactor.dart';

class GlobalChatScreenWidgetModel extends WidgetModel {
  GlobalChatScreenWidgetModel(
    WidgetModelDependencies baseDependencies, {
    required this.messageInteractor,
    required this.messageController,
  }) : super(baseDependencies);

  final MessageInteractor messageInteractor;
  final TextEditingController messageController;

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }
}

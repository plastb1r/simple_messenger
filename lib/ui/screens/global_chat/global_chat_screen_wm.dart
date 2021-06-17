import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';

class GlobalChatScreenWidgetModel extends WidgetModel {
  GlobalChatScreenWidgetModel(
    WidgetModelDependencies baseDependencies,
    this.textController,
  ) : super(baseDependencies);

  final TextEditingController textController;

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}

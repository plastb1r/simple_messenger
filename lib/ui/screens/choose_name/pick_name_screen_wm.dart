import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';

class PickNameScreenWidgetModel extends WidgetModel {
  PickNameScreenWidgetModel(
    WidgetModelDependencies baseDependencies, {
    required this.nameController,
  }) : super(baseDependencies);

  final TextEditingController nameController;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}

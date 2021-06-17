import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:provider/provider.dart';

import 'pick_name_screen_wm.dart';

class PickNameScreen extends CoreMwwmWidget<PickNameScreenWidgetModel> {
  PickNameScreen()
      : super(
          widgetModelBuilder: (context) {
            final wmDependencies = context.read<WidgetModelDependencies>();

            return PickNameScreenWidgetModel(
              wmDependencies,
              nameController: TextEditingController(),
            );
          },
        );

  @override
  _PickNameScreenState createWidgetState() => _PickNameScreenState();
}

class _PickNameScreenState
    extends WidgetState<PickNameScreen, PickNameScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

import 'pick_name_screen_component.dart';
import 'pick_name_screen_wm.dart';

class PickNameScreen extends MwwmWidget<PickNameScreenComponent> {
  PickNameScreen()
      : super(
          widgetModelBuilder: (_) =>
              PickNameScreenWidgetModel(const WidgetModelDependencies()),
          dependenciesBuilder: (context) => PickNameScreenComponent(context),
          widgetStateBuilder: () => _PickNameScreenState(),
        );
}

class _PickNameScreenState extends OldWidgetState<PickNameScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';

import '../../../utils/default_error_handler.dart';
import 'pick_name_screen_wm.dart';

class PickNameScreen extends CoreMwwmWidget<PickNameScreenWidgetModel> {
  PickNameScreen()
      : super(
          widgetModelBuilder: (context) => PickNameScreenWidgetModel(
            WidgetModelDependencies(
              errorHandler: DefaultErrorHandler(),
            ),
            TextEditingController(),
          ),
        );

  @override
  _PickNameScreenState createWidgetState() => _PickNameScreenState();
}

class _PickNameScreenState
    extends WidgetState<PickNameScreen, PickNameScreenWidgetModel> {
  @override
  Widget build(BuildContext context) => Container();
}

import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:surf_injector/surf_injector.dart';

import '../../../utils/default_error_handler.dart';
import 'pick_name_screen_wm.dart';

class PickNameScreenComponent extends Component {
  PickNameScreenComponent(this.context)
      : _wmDependencies = WidgetModelDependencies(
          errorHandler: DefaultErrorHandler(),
        );

  final BuildContext context;
  final WidgetModelDependencies _wmDependencies;
}

PickNameScreenWidgetModel createPickNameScreenWidgetModel(
  PickNameScreenComponent component,
) =>
    PickNameScreenWidgetModel(component._wmDependencies);

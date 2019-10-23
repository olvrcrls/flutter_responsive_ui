import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/sizing_information.dart';
import 'package:responsive_ui/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      device_screen_type: getDeviceType(mediaQuery),
      screen_size: mediaQuery.size
    );
    return builder(context, sizingInformation);
  }
}

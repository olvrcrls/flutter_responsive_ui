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

    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          device_screen_type: getDeviceType(mediaQuery),
          screen_size: mediaQuery.size,
          local_widget_size: Size(boxSizing.maxWidth, boxSizing.maxHeight));
      return builder(context, sizingInformation);
    });
  }
}

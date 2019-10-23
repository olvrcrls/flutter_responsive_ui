import 'package:flutter/material.dart';
import 'package:responsive_ui/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType device_screen_type;
  final Size screen_size;
  final Size local_widget_size;

  SizingInformation({
    this.orientation,
    this.device_screen_type,
    this.screen_size,
    this.local_widget_size
  });

  @override
  String toString() {
    return "Orientation: $orientation, Device Screen Type: $device_screen_type, Screen Size: $screen_size, Local Widget Size: $local_widget_size";
  }
}
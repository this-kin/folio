import 'package:portfolio/core/enum/device_screen_type_enum.dart';
import 'package:portfolio/core/shared/exports.dart';

class Sizing {
  final Size screenSize;
  final Size localWidgetSize;
  final Orientation orientation;
  final DeviceScreenType screenType;

  Sizing({
    required this.screenSize,
    required this.orientation,
    required this.screenType,
    required this.localWidgetSize,
  });
}

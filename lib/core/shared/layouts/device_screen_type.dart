import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/core/enum/device_screen_type_enum.dart';
import 'package:portfolio/core/constants/app_breakpoint_constant.dart';

DeviceScreenType getDeviceScreen(MediaQueryData mediaQuery) {
  double width = mediaQuery.size.width;

  if (width >= AppBreakPoint.desktop) {
    return DeviceScreenType.desktop;
  }

  if (width >= AppBreakPoint.tablet) {
    return DeviceScreenType.tablet;
  }

  return DeviceScreenType.mobile;
}

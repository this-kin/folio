import 'package:portfolio/core/enum/device_screen_type_enum.dart';
import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/widgets/responsive_widgets/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ScreenTypeLayout({
    super.key,
    this.tablet,
    required this.desktop,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizing) {
      switch (sizing.screenType) {
        case DeviceScreenType.mobile:
          return mobile!;
        case DeviceScreenType.tablet:
          return tablet ?? desktop!;
        case DeviceScreenType.desktop:
          return desktop!;
        default:
          return mobile!;
      }
    });
  }
}

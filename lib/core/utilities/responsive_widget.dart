import 'package:portfolio/core/utilities/exports.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveWidget({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  static const double smallWidth = 600;
  static const double mediumWidth = 960;
  static const double largeWidth = 1280;

  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < smallWidth;
  }

  static bool isMedium(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width >= smallWidth && width < mediumWidth;
  }

  static bool isLarge(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width >= mediumWidth && width < largeWidth;
  }

  static bool isExtraLarge(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeWidth;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= largeWidth) {
      return desktop!;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile!;
    }
  }
}

import 'package:portfolio/core/shared/exports.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? largeScreen;

  const ResponsiveWidget({
    Key? key,
    this.smallScreen,
    this.mediumScreen,
    this.largeScreen,
  }) : super(key: key);

  static const double smallWidth = 800;
  static const double largeWidth = 1200;

  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width <= smallWidth;
  }

  static bool isMedium(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width >= smallWidth && width < largeWidth;
  }

  static bool isLarge(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width >= largeWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= largeWidth) {
        return largeScreen!;
      } else if (constraints.maxWidth < largeWidth &&
          constraints.maxWidth >= smallWidth) {
        return mediumScreen ?? largeScreen!;
      } else {
        return smallScreen ?? largeScreen!;
      }
    });
  }
}

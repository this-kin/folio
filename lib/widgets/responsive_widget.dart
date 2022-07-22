import 'package:portfolio/constants/app_constant.dart';
import 'package:portfolio/core/exports.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    Key key,
    this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (constraints.maxWidth < largeScreenSize &&
          constraints.maxWidth >= mediumScreenSize) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen;
      }
    });
  }
}

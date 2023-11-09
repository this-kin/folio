import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/core/shared/layouts/device_screen_type.dart';
import 'package:portfolio/core/shared/layouts/sizing_information.dart';
import 'package:portfolio/core/extension/buildcontext_extension.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, Sizing sizing) builder;

  const ResponsiveBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = context.mediaQuery;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final sizing = Sizing(
        screenSize: mediaQuery.size,
        orientation: mediaQuery.orientation,
        screenType: getDeviceScreen(mediaQuery),
        localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
      );
      return builder(context, sizing);
    });
  }
}

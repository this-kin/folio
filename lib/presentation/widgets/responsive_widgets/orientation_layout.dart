import 'package:portfolio/core/extension/buildcontext_extension.dart';
import 'package:portfolio/core/shared/exports.dart';

class OrientationLayout extends StatelessWidget {
  final Widget? portrait;
  final Widget? landscape;

  const OrientationLayout({
    super.key,
    this.portrait,
    this.landscape,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = context.orientation;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (orientation == Orientation.landscape) {
          return landscape ?? portrait!;
        }
        return portrait!;
      },
    );
  }
}

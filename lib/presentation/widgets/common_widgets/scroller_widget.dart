import 'package:portfolio/core/shared/exports.dart';

class ScrollerWidget extends StatelessWidget {
  final Widget? child;
  const ScrollerWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(child: child!),
    );
  }
}

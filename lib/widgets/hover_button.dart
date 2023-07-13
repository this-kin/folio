import 'package:portfolio/core/utils/exports.dart';

class OnHoverButton extends StatefulWidget {
  final Widget child;
  const OnHoverButton({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: widget.child,
    );
  }
}

import 'package:portfolio/core/exports.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: theme.backgroundColor,
          ),
        ),
        Expanded(
          child: Container(
            height: 1200,
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          ),
        )
      ],
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    debugPrint('width is ${size.width.toString()}');
    debugPrint('height is ${size.height.toString()}');

    var paint = Paint()
      ..color = darkBlueColor
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, 500)
      ..lineTo(0, 700)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

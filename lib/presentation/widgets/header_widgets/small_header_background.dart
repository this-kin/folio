import 'package:portfolio/core/shared/exports.dart';

class SmallHeaderBackground extends StatelessWidget {
  const SmallHeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: backgroundColor,
            ),
          ),
          Expanded(
            child: CustomPaint(
              painter: _BackgroundPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = darkBlueColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(700, 200);
    path.lineTo(270, 400);
    path.lineTo(270, 1000);
    path.lineTo(700, 1000);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

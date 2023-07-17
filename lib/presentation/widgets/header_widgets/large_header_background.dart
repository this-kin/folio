import 'package:portfolio/core/utilities/exports.dart';

class LargeHeaderBackground extends StatelessWidget {
  const LargeHeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            color: backgroundColor,
          ),
        ),
        SizedBox(
          width: size.width * 0.28,
          height: size.height,
          child: Expanded(
            child: CustomPaint(
              painter: _BackgroundPainter(),
            ),
          ),
        )
      ],
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
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

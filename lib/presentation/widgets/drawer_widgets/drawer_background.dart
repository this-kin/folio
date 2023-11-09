import 'package:portfolio/core/shared/exports.dart';

class DrawerBackground extends StatelessWidget {
  const DrawerBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _backgoundPattern(),
      mediumScreen: _backgoundPattern(),
      smallScreen: SizedBox(
        height: 600,
        width: MediaQuery.of(context).size.width,
        child: CustomPaint(
          painter: _DrawerPainter(),
        ),
      ),
    );
  }

  Widget _backgoundPattern() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: darkBlueColor,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
              color: backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}

class _DrawerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = darkPurpleColor
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width, (size.height / 8) - 5)
      ..lineTo(0, size.height / 1.6)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

import 'package:portfolio/core/shared/exports.dart';

class AppDrawerDesktop extends StatelessWidget {
  const AppDrawerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        color: backgroundColor,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: darkBlueColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: backgroundColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:portfolio/core/utilities/exports.dart';

class AppDrawerPattern extends StatelessWidget {
  const AppDrawerPattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

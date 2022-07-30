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
            decoration: const BoxDecoration(
              color: darkBlueColor,
            ),
          ),
        )
      ],
    );
  }
}

class LargeDrawerPattern extends StatelessWidget {
  const LargeDrawerPattern({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            decoration: BoxDecoration(
              color: theme.backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}

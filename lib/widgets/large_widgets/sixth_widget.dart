import 'package:portfolio/core/exports.dart';

class SixthWidget extends StatelessWidget {
  const SixthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Center(
            child: Text(
              "What People Say",
              style: CustomTheme.semiLargeText(context).copyWith(
                color: purpleColor,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Text(
              "Trust By\nClients.",
              style: CustomTheme.largeText(context),
            ),
          ),
        ],
      ),
    );
  }
}

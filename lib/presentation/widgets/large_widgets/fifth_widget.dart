import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/widgets/large_widgets/tab_widget.dart';

class FifthWidget extends StatelessWidget {
  const FifthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 170),
          Row(
            children: [
              Container(
                height: 2,
                width: 70,
                decoration: const BoxDecoration(color: purpleColor),
              ),
              const SizedBox(width: 20),
              Text(
                "Portifolio",
                style: CustomTheme.mediumText(context).copyWith(
                  color: purpleColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          Text(
            "Look at My\nProducts.",
            style: CustomTheme.largeText(context),
          ),
          const SizedBox(height: 50),
          const TabWidget(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

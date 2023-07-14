import 'package:portfolio/core/utils/exports.dart';

class FourthWidget extends StatelessWidget {
  const FourthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      color: darkBlueColor,
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
                decoration: const BoxDecoration(color: backgroundColor),
              ),
              const SizedBox(width: 20),
              Text(
                "Who I Work With",
                style: CustomTheme.mediumText(context).copyWith(
                  color: backgroundColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          Text(
            "Art Direction\nfor Global\nLeading\nBrands.",
            style: CustomTheme.largeText(context).copyWith(
              color: backgroundColor,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            "I research and create\nbreakthrough - delightful ideas,\nleading visual designers",
            style: CustomTheme.mediumText(context).copyWith(
              color: backgroundColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4,
            ),
          )
        ],
      ),
    );
  }
}

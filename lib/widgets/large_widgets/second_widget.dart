import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/large_widgets/large_button.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 320),
          Row(
            children: [
              Container(
                height: 2,
                width: 70,
                decoration: const BoxDecoration(color: purpleColor),
              ),
              const SizedBox(width: 20),
              const Text(
                "What I Do",
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "I enjoy creating delightful,\nhuman-centered digital experiences.",
            style: CustomTheme.largeText(context).copyWith(
              fontSize: 43,
            ),
          ),
          const SizedBox(height: 110),
          Text(
            "Think. Make.\nSolve.",
            style: CustomTheme.largeText(context).copyWith(
              fontSize: 100,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              ContactButton(
                text: "Contact Me",
                onPressed: () {
                  // contact me
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

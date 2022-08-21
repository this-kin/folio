import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';

class LastWidget extends StatelessWidget {
  const LastWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 100),
                            Row(
                              children: [
                                Container(
                                  height: 2,
                                  width: 70,
                                  decoration:
                                      const BoxDecoration(color: purpleColor),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  "Say Hello 🖐",
                                  style:
                                      CustomTheme.mediumText(context).copyWith(
                                    color: purpleColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Text(
                              "Let's Work\nTogether.",
                              style: CustomTheme.largeText(context),
                            ),
                            const SizedBox(height: 50),
                            Text(
                              "I'd love to meet up with you to\ndiscuss your venture, and\npotential collaborations.",
                              style:
                                  CustomTheme.semiLargeText(context).copyWith(
                                color: greyTextColor,
                              ),
                            ),
                            const SizedBox(height: 150),
                            CustomTextButton(
                              icon: ConstanceData.message,
                              text: 'hello@ui8.net',
                              onPressed: () {
                                // send mail
                              },
                            ),
                            const SizedBox(height: 30),
                            CustomTextButton(
                              icon: ConstanceData.location,
                              text:
                                  '4074 Ebert Summit Suite 375\nLake Leonardchester',
                              onPressed: () {
                                // send mail
                              },
                            ),
                            const SizedBox(height: 30),
                            CustomTextButton(
                              icon: ConstanceData.phone,
                              text: '+44 123 654 7890',
                              onPressed: () {
                                // phone call
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 200),
                          
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 500),
              ],
            ),
          ),
        )
      ],
    );
  }
}

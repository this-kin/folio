import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/large_widgets/field_widget.dart';
import 'package:portfolio/widgets/large_widgets/hover_text.dart';

class LastWidget extends StatelessWidget {
  const LastWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Container(
            height: 2020,
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.04),
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: Offset(1, 3),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.04),
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: Offset(1, 3),
                ),
              ],
            ),
            child: Container(
              height: 2000,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.04),
                    blurRadius: 20,
                    spreadRadius: 3,
                    offset: Offset(1, 3),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.04),
                    blurRadius: 20,
                    spreadRadius: 3,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 100),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 2,
                                    width: 70,
                                    decoration:
                                        const BoxDecoration(color: purpleColor),
                                  ),
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 1020),
                            CustomField(
                              title: "Name",
                              icon: ConstanceData.person,
                              controller: TextEditingController(),
                              textInputType: TextInputType.name,
                              isMessage: false,
                            ),
                            const SizedBox(height: 5),
                            CustomField(
                              title: "Email",
                              icon: ConstanceData.send,
                              controller: TextEditingController(),
                              textInputType: TextInputType.emailAddress,
                              isMessage: false,
                            ),
                            const SizedBox(height: 5),
                            CustomField(
                              title: "What are you working on?",
                              icon: ConstanceData.field_icon,
                              controller: TextEditingController(),
                              textInputType: TextInputType.text,
                              isMessage: false,
                            ),
                            const SizedBox(height: 5),
                            CustomField(
                              title: "Message",
                              icon: ConstanceData.chat,
                              controller: TextEditingController(),
                              textInputType: TextInputType.text,
                              isMessage: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 230),
                              child: Container(
                                height: 90,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: purpleColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: InkWell(
                                    onTap: () {
                                      //
                                    },
                                    borderRadius: BorderRadius.circular(20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Let's Talk",
                                          style: CustomTheme.mediumText(context)
                                              .copyWith(
                                            color: backgroundColor,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: backgroundColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SocialButton(
                          icon: ConstanceData.instagram,
                          title: 'Instagram',
                          onPressed: () {
                            // open instagram
                          },
                        ),
                        SocialButton(
                          icon: ConstanceData.instagram,
                          title: 'Instagram',
                          onPressed: () {
                            // open instagram
                          },
                        ),
                        SocialButton(
                          icon: ConstanceData.instagram,
                          title: 'Instagram',
                          onPressed: () {
                            // open instagram
                          },
                        ),
                        SocialButton(
                          icon: ConstanceData.instagram,
                          title: 'Instagram',
                          onPressed: () {
                            // open instagram
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 100),
        Container(
          height: 1000,
          color: darkBlueColor,
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          ConstanceData.appcon,
                        ),
                        const SizedBox(height: 200),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You only have one\nchance to make a first\nimpression.",
                          style: CustomTheme.largeText(context).copyWith(
                            color: backgroundColor,
                            fontSize: 45,
                          ),
                        ),
                        const SizedBox(height: 100),
                        Text(
                          "Let's make it an amazing one.",
                          style: CustomTheme.semiLargeText(context).copyWith(
                            color: pinkColor,
                          ),
                        ),
                        const SizedBox(height: 200),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        kTextButton(
                          text: "About Me",
                          onPressed: () {
                            // scroll up
                          },
                        ),
                        kTextButton(
                          text: "Projects",
                          onPressed: () {
                            // scroll up
                          },
                        ),
                        kTextButton(
                          text: "Contact",
                          onPressed: () {
                            // scroll up
                          },
                        ),
                        kTextButton(
                          text: "Dribbble",
                          onPressed: () {
                            // scroll up
                          },
                        ),
                        kTextButton(
                          text: "Instagram",
                          onPressed: () {
                            // scroll up
                          },
                        ),
                        const SizedBox(height: 200),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: greyColor,
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "© 2020, UI8 LLC.",
                      style: CustomTheme.semiLargeText(context).copyWith(
                        color: backgroundColor,
                      ),
                    ),
                    kTextButton(
                      text: "Back to top",
                      onPressed: () {
                        // scroll up
                      },
                    )
                  ],
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

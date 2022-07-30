import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/constants/controller.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';

class FirstWidget extends StatefulWidget {
  const FirstWidget({Key key}) : super(key: key);

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget>
    with SingleTickerProviderStateMixin {
  //
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Row(
          children: [
            SvgPicture.asset(
              ConstanceData.appicon,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(width: 80),
            SocialButton(
              icon: ConstanceData.dribble,
              title: 'Dribble',
              onPressed: () {
                // open dribbble
              },
            ),
            const SizedBox(width: 70),
            SocialButton(
              icon: ConstanceData.instagram,
              title: 'Instagram',
              onPressed: () {
                // open instagram
              },
            ),
            const Spacer(),
            Obx(() {
              return AnimatedContainer(
                decoration: BoxDecoration(
                  color:
                      appController.isOpen.value ? purpleColor : transparency,
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 500),
                child: RoundButton(
                  onPressed: () {
                    if (!appController.isOpen.value) {
                      appController.openDrawer();
                      _controller.forward();
                    }
                    appController.openDrawer();
                    _controller.forward();
                  },
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    color: theme.backgroundColor,
                    progress: _controller,
                  ),
                ),
              );
            })
          ],
        ),
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
              "Jack Gross",
              style: CustomTheme.normalText(context)
            )
          ],
        ),
        const SizedBox(height: 50),
        Text(
          "Hello, my\nname's Jack.\nI'm a Visual\nDesigner.",
          style: CustomTheme.largeText(context),
        ),
        const SizedBox(height: 210),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              ScrollButton(
                onPressed: () {
                  // scroll down
                },
              ),
              const SizedBox(width: 50),
              const Text(
                "Scroll Down",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

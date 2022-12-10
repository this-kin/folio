import 'package:portfolio/constants/app_constant.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({Key key}) : super(key: key);

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget>
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
    return Container(
      padding: kPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              SvgPicture.asset(
                ConstanceData.appicon,
                fit: BoxFit.scaleDown,
              ),
              if (!ResponsiveWidget.isMobile(context))
                const SizedBox(width: 50),
              if (!ResponsiveWidget.isMobile(context))
                SocialButton(
                  icon: ConstanceData.dribble,
                  title: 'Dribble',
                  onPressed: () {
                    // open dribbble
                  },
                ),
              if (!ResponsiveWidget.isMobile(context))
                const SizedBox(width: 70),
              if (!ResponsiveWidget.isMobile(context))
                SocialButton(
                  icon: ConstanceData.instagram,
                  title: 'Instagram',
                  onPressed: () {
                    // open instagram
                  },
                ),
              if (!ResponsiveWidget.isMobile(context) &&
                  ResponsiveWidget.isMobile(context))
                const Spacer(),
              if (!ResponsiveWidget.isMobile(context) &&
                  ResponsiveWidget.isMobile(context))
                Obx(() {
                  return AnimatedContainer(
                    decoration: BoxDecoration(
                      color: appController.isOpen.value
                          ? purpleColor
                          : transparency,
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
                Text(
                  "Scroll Down",
                  style: CustomTheme.mediumText(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

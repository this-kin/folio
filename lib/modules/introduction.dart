import 'package:portfolio/core/constants/app_constant.dart';
import 'package:portfolio/core/utils/exports.dart';
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
  Animation _animation;
  final Tween<double> _opacityTween = Tween<double>(begin: 0.4, end: 0.9);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _animation = Tween<double>(begin: 0, end: -50).animate(_controller)
      ..addStatusListener((status) {});
    _controller.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Container(
            padding: kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                Row(
                  children: [
                    SvgPicture.asset(
                      ConstanceData.appicon,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 50),
                    if (!ResponsiveWidget.isMobile(context))
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
                            icon: AnimatedIcons.close_menu,
                            color: theme.backgroundColor,
                            progress: _controller,
                          ),
                        ),
                      );
                    })
                  ],
                ),
                const SizedBox(height: 120),
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
                const SizedBox(height: 150),
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
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

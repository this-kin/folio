import 'package:get/get.dart';
import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/constants/controller.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/large_widgets/large_background.dart';
import 'package:portfolio/widgets/large_widgets/large_drawer.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen>
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Obx(
        () => Scaffold(
            key: appController.globalKey.value,
            drawer: const LargeDrawer(),
            body: Stack(
              children: [
                const BackgroundPattern(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 50),
                          Row(
                            children: [
                              SvgPicture.asset(
                                ConstanceData.appicon,
                                fit: BoxFit.scaleDown,
                              ),
                              const SizedBox(width: 70),
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
                                decoration:
                                    const BoxDecoration(color: purpleColor),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                "Jack Gross",
                                style: TextStyle(
                                  color: purpleColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 50),
                          const Text(
                            "Hello, my\nname's Jack.\nI'm a Visual\nDesigner.",
                            style: TextStyle(
                              color: blackColor,
                              height: 0,
                              fontSize: 65,
                              fontWeight: FontWeight.bold,
                            ),
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
                          const SizedBox(height: 500),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

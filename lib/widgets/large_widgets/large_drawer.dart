import 'package:get/get.dart';
import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/constants/controller.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/large_widgets/large_background.dart';

class LargeDrawer extends StatefulWidget {
  const LargeDrawer({Key key}) : super(key: key);

  @override
  State<LargeDrawer> createState() => _LargeDrawerState();
}

class _LargeDrawerState extends State<LargeDrawer>
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
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Drawer(
        backgroundColor: backgroundColor,
        elevation: 0,
        width: width,
        child: Container(
          width: width,
          decoration: const BoxDecoration(
            color: backgroundColor,
          ),
          child: Stack(
            children: [
              const LargeDrawerPattern(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ConstanceData.logo,
                          fit: BoxFit.scaleDown,
                          color: backgroundColor,
                        ),
                        const Spacer(),
                        Obx(() {
                          return AnimatedContainer(
                            decoration: BoxDecoration(
                              color: !appController.isOpen.value
                                  ? transparency
                                  : purpleColor,
                              shape: BoxShape.circle,
                            ),
                            duration: const Duration(milliseconds: 500),
                            child: RoundButton(
                              onPressed: () {
                                if (appController.isOpen.value) {
                                  appController.closeDrawer();
                                  _controller.forward();
                                }
                                appController.closeDrawer();
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
                    const SizedBox(height: 30),
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
                      text: '4074 Ebert Summit Suite 375\nLake Leonardchester',
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
                    const SizedBox(height: 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

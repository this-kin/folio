import 'package:get/get.dart';
import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/constants/controller.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/large_widgets/first_widget.dart';
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
                          const FirstWidget(),
                          const SizedBox(height: 320),
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
                                "What I Do",
                                style: TextStyle(
                                  color: purpleColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
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

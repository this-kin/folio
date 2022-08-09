import 'package:get/get.dart';
import 'package:portfolio/constants/controller.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/large_widgets/fifth_widget.dart';
import 'package:portfolio/widgets/large_widgets/first_widget.dart';
import 'package:portfolio/widgets/large_widgets/fourth_widget.dart';
import 'package:portfolio/widgets/large_widgets/large_background.dart';
import 'package:portfolio/widgets/large_widgets/large_drawer.dart';
import 'package:portfolio/widgets/large_widgets/second_widget.dart';
import 'package:portfolio/widgets/large_widgets/sixth_widget.dart';
import 'package:portfolio/widgets/large_widgets/third_widget.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
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
          backgroundColor: theme.backgroundColor,
          key: appController.globalKey.value,
          drawer: const LargeDrawer(),
          body: Stack(
            children: [
              const BackgroundPattern(),
              ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      FirstWidget(),
                      SecondWidget(),
                      ThirdWidget(),
                      FourthWidget(),
                      FifthWidget(),
                      SixthWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

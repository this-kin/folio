import 'package:portfolio/core/utils/exports.dart';
import 'package:portfolio/modules/contact_widget.dart';
import 'package:portfolio/modules/introduction.dart';
import 'package:portfolio/widgets/large_widgets/fifth_widget.dart';
import 'package:portfolio/widgets/large_widgets/fourth_widget.dart';
import 'package:portfolio/widgets/large_widgets/large_background.dart';
import 'package:portfolio/widgets/large_widgets/large_drawer.dart';
import 'package:portfolio/widgets/large_widgets/last_widget.dart';
import 'package:portfolio/widgets/large_widgets/sixth_widget.dart';
import 'package:portfolio/widgets/large_widgets/third_widget.dart';
import 'package:portfolio/widgets/small_widgets/background_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: GetBuilder<AppController>(
        init: appController,
        builder: (controller) {
          return Scaffold(
            drawer: const AppDrawer(),
            backgroundColor: theme.backgroundColor,
            key: controller.globalKey.value,
            body: Container(
              color: backgroundColor,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const ResponsiveWidget(
                    desktop: BackgroundPattern(),
                    tablet: BackgroundPattern(),
                    mobile: SmallBackgroundPattern(),
                  ),
                  ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          NameWidget(),
                          ContactWidget(),
                          ThirdWidget(),
                          FourthWidget(),
                          FifthWidget(),
                          SixthWidget(),
                          LastWidget(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

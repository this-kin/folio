import 'package:portfolio/core/utilities/exports.dart';
import 'package:portfolio/presentation/screens/contact_widget.dart';
import 'package:portfolio/presentation/screens/introduction.dart';
import 'package:portfolio/presentation/widgets/large_widgets/fifth_widget.dart';
import 'package:portfolio/presentation/widgets/large_widgets/fourth_widget.dart';
import 'package:portfolio/presentation/widgets/large_widgets/large_background.dart';
import 'package:portfolio/presentation/widgets/large_widgets/large_drawer.dart';
import 'package:portfolio/presentation/widgets/large_widgets/last_widget.dart';
import 'package:portfolio/presentation/widgets/large_widgets/sixth_widget.dart';
import 'package:portfolio/presentation/widgets/large_widgets/third_widget.dart';
import 'package:portfolio/presentation/widgets/small_widgets/background_widgets.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appController = ref.watch(appProvider);
    return Scaffold(
      drawer: const AppDrawer(),
      key: appController.globalKey,
      backgroundColor: theme.backgroundColor,
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
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
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
  }
}

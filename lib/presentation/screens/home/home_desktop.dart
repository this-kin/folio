import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/header_widget.dart';
import 'package:portfolio/presentation/screens/custom_drawer.dart';
import 'package:portfolio/presentation/widgets/common_widgets/scroller_widget.dart';

class HomeDesktop extends ConsumerWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appController = ref.read(appProvider);
    return Scaffold(
      drawer: const CustomDrawer(),
      key: appController.globalKey,
      body: Container(
        color: backgroundColor,
        child: ScrollerWidget(
          child: Column(
            children: const [
              HeaderWidget(),
              // ContactWidget(),
              // ThirdWidget(),
              // FourthWidget(),
              // FifthWidget(),
              // SixthWidget(),
              // LastWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

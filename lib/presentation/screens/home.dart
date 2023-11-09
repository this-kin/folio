import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/header_widget.dart';
import 'package:portfolio/presentation/screens/custom_drawer.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appController = ref.watch(appProvider);
    return Scaffold(
      drawer: const CustomDrawer(),
      key: appController.globalKey,
      body: Container(
        color: backgroundColor,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
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
      ),
    );
  }
}

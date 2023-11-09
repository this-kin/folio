import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/home/home_desktop.dart';
import 'package:portfolio/presentation/screens/home/home_mobile.dart';
import 'package:portfolio/presentation/widgets/responsive_widgets/screen_type_layout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      desktop: HomeDesktop(),
      mobile: HomeMobile(),
    );
  }
}

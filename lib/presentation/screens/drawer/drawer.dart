import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/drawer/drawer_desktop.dart';
import 'package:portfolio/presentation/screens/drawer/drawer_mobile.dart';
import 'package:portfolio/presentation/widgets/responsive_widgets/screen_type_layout.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      desktop: AppDrawerDesktop(),
    );
  }
}

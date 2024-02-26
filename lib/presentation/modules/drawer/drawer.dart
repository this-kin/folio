import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/modules/drawer/desktop_drawer.dart';
import 'package:portfolio/presentation/modules/drawer/mobile_drawer.dart';
import 'package:portfolio/presentation/widgets/responsive_widgets/screen_type_layout.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: DrawerMobile(),
      desktop: DrawerDesktop(),
    );
  }
}

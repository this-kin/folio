import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/modules/introduction/desktop_introduction.dart';
import 'package:portfolio/presentation/modules/introduction/mobile_introduction.dart';
import 'package:portfolio/presentation/widgets/responsive_widgets/screen_type_layout.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: IntroductionMobile(),
      desktop: IntroductionDesktop(),
    );
  }
}

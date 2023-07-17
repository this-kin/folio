import 'package:portfolio/core/utilities/exports.dart';
import 'package:portfolio/presentation/widgets/header_widgets/large_header_background.dart';
import 'package:portfolio/presentation/widgets/header_widgets/small_header_background.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height + size.height * 0.1,
      width: size.width,
      color: backgroundColor,
      child: Stack(
        children: [
          ResponsiveWidget.isSmall(context)
              ? const SmallHeaderBackground()
              : const LargeHeaderBackground(),
        ],
      ),
    );
  }
}

import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/large_widgets/large_background.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen>
    with SingleTickerProviderStateMixin {
  //
  AnimationController _controller;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
          body: Stack(
        children: [
          const BackgroundPattern(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Row(
                  children: [
                    SvgPicture.asset(
                      ConstanceData.appicon,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 70),
                    CustomIcon(
                      icon: ConstanceData.dribble,
                      title: 'Dribble',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 70),
                    CustomIcon(
                      icon: ConstanceData.instagram,
                      title: 'Instagram',
                      onPressed: () {},
                    ),
                    const Spacer(),
                    AnimatedContainer(
                      decoration: BoxDecoration(
                        color: _isOpen ? purpleColor : transparency,
                        shape: BoxShape.circle,
                      ),
                      duration: const Duration(milliseconds: 500),
                      child: CustomIconBtn(
                        onPressed: toggle,
                        icon: AnimatedIcon(
                          icon: AnimatedIcons.menu_close,
                          color: theme.backgroundColor,
                          progress: _controller,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  // toggle
  void toggle() {
    setState(() {
      _isOpen = !_isOpen;
      _isOpen ? _controller.forward() : _controller.reverse();
    });
  }
}

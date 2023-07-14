import 'package:portfolio/core/constants/app_constant.dart';
import 'package:portfolio/core/utilities/exports.dart';
import 'package:portfolio/presentation/widgets/large_widgets/large_button.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget>
    with SingleTickerProviderStateMixin {
  //
  late AnimationController _controller;
  late Animation _animation;

  final Tween<double> _opacityTween = Tween<double>(begin: 0.4, end: 0.9);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _animation = Tween<double>(begin: 0, end: -50).animate(_controller)
      ..addStatusListener((status) {});
    _controller.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, snapshot) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Container(
            color: backgroundColor,
            padding: kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                Row(
                  children: [
                    Container(
                      height: 2,
                      width: 70,
                      decoration: const BoxDecoration(color: purpleColor),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "What I Do",
                      style: TextStyle(
                        color: purpleColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "I enjoy creating delightful,\nhuman-centered digital experiences.",
                  style: CustomTheme.largeText(context).copyWith(
                    fontSize: 43,
                  ),
                ),
                const SizedBox(height: 110),
                Text(
                  "Think. Make.\nSolve.",
                  style: CustomTheme.largeText(context).copyWith(
                    fontSize: 100,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    ContactButton(
                      text: "Contact Me",
                      onPressed: () {
                        // contact me
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/core/exports.dart';

class RoundButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const RoundButton({
    Key key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: icon,
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final String title;

  const SocialButton({
    Key key,
    this.icon,
    this.onPressed,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                height: 18,
                width: 18,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  color: grayColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

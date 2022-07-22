import 'package:portfolio/constants/color_constant.dart';
import 'package:portfolio/core/exports.dart';

class CustomIconBtn extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const CustomIconBtn({
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

class CustomIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final String title;

  const CustomIcon({
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
                color: grayColor,
                height: 15,
                width: 15,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: grayColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
                height: 17,
                width: 17,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: CustomTheme.mediumText(context).copyWith(
                  color: const Color(0xff9F9FA9),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ScrollButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SvgPicture.asset(
              ConstanceData.scroll,
              height: 18,
              width: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final dynamic icon;
  final String text;

  const CustomTextButton({
    Key key,
    this.onPressed,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 100),
        SvgPicture.asset(
          icon,
          fit: BoxFit.scaleDown,
          color: purpleColor,
        ),
        const SizedBox(width: 30),
        Flexible(
          fit: FlexFit.tight,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

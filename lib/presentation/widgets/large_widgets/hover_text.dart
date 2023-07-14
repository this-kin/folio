import 'package:portfolio/core/utils/exports.dart';

class kTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const kTextButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {
          //
        },
        child: Text(
          text!,
          style: CustomTheme.semiLargeText(context).copyWith(
            color: backgroundColor,
          ),
        ),
      ),
    );
  }
}

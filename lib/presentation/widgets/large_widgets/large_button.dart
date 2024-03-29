import 'package:portfolio/core/shared/exports.dart';

class ContactButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const ContactButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 30),
            child: Row(
              children: [
                Text(
                  text!,
                  style: CustomTheme.mediumText(context).copyWith(
                    color: backgroundColor,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward,
                  color: backgroundColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

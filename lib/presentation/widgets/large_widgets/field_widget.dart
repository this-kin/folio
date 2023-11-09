import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/widgets/border_widget.dart';

class CustomField extends StatelessWidget {
  final String? icon;
  final String? title;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool? isMessage;

  const CustomField({
    Key? key,
    this.icon,
    this.title,
    this.controller,
    this.textInputType,
    this.isMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMessage! ? 250 : 100,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: CustomTheme.semiLargeText(context).copyWith(
          color: blackColor,
        ),
        controller: controller,
        keyboardType: textInputType,
        maxLines: isMessage! ? 5 : 1,
        decoration: InputDecoration(
          fillColor: greyColor.withOpacity(0.1),
          filled: true,
          border: primaryBorder(),
          errorBorder: errorBorder(),
          focusedBorder: focusBorder(),
          enabledBorder: primaryBorder(),
          suffixIcon: SvgPicture.asset(
            icon!,
            fit: BoxFit.scaleDown,
            color: blackColor,
          ),
          hintText: title,
          hintStyle: CustomTheme.semiLargeText(context).copyWith(
            color: greyTextColor,
          ),
        ),
      ),
    );
  }
}

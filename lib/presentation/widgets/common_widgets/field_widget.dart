import 'package:portfolio/core/utilities/exports.dart';

class AuthTextField extends StatefulWidget {
  final TextEditingController? controller;
  final int? maxLength;
  final String? hintText, suffixIcon;
  final TextStyle hintStyle, errorStyle, inputStyle;
  final EdgeInsets? contentPadding;
  final void Function(String? value)? onSaved, onChanged, onSubmitted;
  final Widget? prefix;
  final bool showCursor;
  final bool autofocus;
  final bool showErrorBorder;
  final TextAlign textAlign;
  final Alignment errorAlign, floatingAlign;
  final Color fillColor;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String? value) validator;

  const AuthTextField({
    Key? key,
    this.controller,
    this.maxLength,
    this.onSaved,
    this.onChanged,
    this.onSubmitted,
    this.prefix,
    this.showCursor = true,
    this.showErrorBorder = false,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.errorAlign = Alignment.centerRight,
    this.floatingAlign = Alignment.centerLeft,
    this.fillColor = backgroundColor,
    this.suffixIcon,
    this.hintText,
    this.hintStyle = const TextStyle(
      fontSize: 15,
      color: greyTextColor,
    ),
    this.errorStyle = const TextStyle(
      height: 1,
      color: Colors.transparent,
    ),
    this.inputStyle = const TextStyle(
      fontSize: 15,
      color: blackColor,
    ),
    this.contentPadding,
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
  }) : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  String? errorText;
  bool hidePassword = true;

  bool get hasError => errorText != null;

  bool get showErrorBorder => widget.showErrorBorder && hasError;

  bool get isPasswordField =>
      widget.keyboardType == TextInputType.visiblePassword;

  void _onSaved(String? value) {
    value = value!.trim();
    widget.controller?.text = value;
    widget.onSaved?.call(value);
  }

  void _onChanged(String value) {
    if (widget.onChanged != null) {
      _runValidator(value);
      widget.onChanged!(value);
    }
  }

  String? _runValidator(String? value) {
    final error = widget.validator(value!.trim());
    setState(() {
      errorText = error;
    });
    return error;
  }

  void _togglePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 75.h,
      // width: 340.w,
      child: TextFormField(
        controller: widget.controller,
        textAlign: widget.textAlign,
        autofocus: widget.autofocus,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        style: CustomTheme.normalText(context),
        showCursor: widget.showCursor,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        textAlignVertical: TextAlignVertical.center,
        autovalidateMode: AutovalidateMode.disabled,
        cursorColor: purpleColor,
        obscureText: isPasswordField && hidePassword,
        validator: _runValidator,
        onFieldSubmitted: widget.onSubmitted,
        onSaved: _onSaved,
        onChanged: _onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: greyTextColor, fontSize: 13),
          errorStyle: const TextStyle(
            color: redColor,
            fontSize: 12,
          ),
          fillColor: widget.fillColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          filled: true,
          counterText: '',
          border: primaryBorder(),
          focusedBorder: focusBorder(),
          focusedErrorBorder: focusBorder(),
          enabledBorder: primaryBorder(),
          errorBorder: showErrorBorder ? errorBorder() : null,
          suffixIcon: SvgPicture.asset(
            widget.suffixIcon!,
            color: purpleColor,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder focusBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: purpleColor),
    );
  }

  OutlineInputBorder primaryBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: greyColor),
    );
  }

  OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: redColor),
    );
  }
}

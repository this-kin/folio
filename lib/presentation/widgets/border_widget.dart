import 'package:portfolio/core/utilities/exports.dart';

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: greyColor.withOpacity(0.1),
      width: 0.0,
    ),
  );
}

OutlineInputBorder primaryBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: greyColor.withOpacity(0.1),
      width: 0.0,
    ),
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: const BorderSide(
      color: redColor,
      width: 0.0,
    ),
  );
}

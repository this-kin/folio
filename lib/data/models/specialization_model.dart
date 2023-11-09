import 'package:portfolio/core/shared/exports.dart';

class Specialization {
  final String? image;
  final String? title;
  final String? description;
  final Color? color;

  Specialization({
    this.image,
    this.title,
    this.description,
    this.color,
  });
}

final Specialization specialization1 = Specialization(
  image: ConstanceData.cursor,
  title: "User Interface",
  color: yellowColor,
  description:
      "We have got quite a few\n already made templates for\nbetter project management\nthat you can use now.",
);

final Specialization specialization2 = Specialization(
  image: ConstanceData.hand,
  title: "User Experience",
  color: purpleColor,
  description:
      "We have got quite a few\n already made templates for\nbetter project management\nthat you can use now.",
);
final Specialization specialization3 = Specialization(
  image: ConstanceData.color_picker,
  color: pinkColor,
  title: "UI Design Kit",
  description:
      "We have got quite a few\n already made templates for\nbetter project management\nthat you can use now.",
);

List<Specialization> specializations = [
  specialization1,
  specialization2,
  specialization3,
];

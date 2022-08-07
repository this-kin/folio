import 'package:portfolio/core/exports.dart';

class Specialization {
  final String image;
  final String title;
  final String description;
  final Color color;

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

//

class Case {
  final String image;
  final String title;
  final String description;

  Case({
    this.image,
    this.title,
    this.description,
  });
}

Case case1 = Case(
  image: ConstanceData.case1,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);
Case case2 = Case(
  image: ConstanceData.case2,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);
Case case3 = Case(
  image: ConstanceData.case3,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);

Case case4 = Case(
  image: ConstanceData.case4,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);

Case case5 = Case(
  image: ConstanceData.case5,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);
Case case6 = Case(
  image: ConstanceData.case6,
  title: "Collab Landing Page",
  description: "UI Kit, Coded Template",
);

List<Case> cases = [
  case1,
  case2,
  case3,
  case4,
  case5,
  case6,
];

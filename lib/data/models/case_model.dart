import 'package:portfolio/constants/image_constants.dart';

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

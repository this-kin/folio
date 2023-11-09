import 'package:portfolio/core/shared/exports.dart';

extension BuildContextExt on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  Orientation get orientation => MediaQuery.of(this).orientation;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

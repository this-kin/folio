import 'package:portfolio/core/shared/exports.dart';

extension BuildContextExt on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

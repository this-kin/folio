import 'package:portfolio/core/shared/exports.dart';

extension BuildContextExt on BuildContext {
  /// getter returns device screen height size (VERTICAL)
  double get height => MediaQuery.of(this).size.height;

  /// getter returns device screen width size (HORIZONTAL)
  double get width => MediaQuery.of(this).size.width;

  /// getter returns device screen orientation (Orientation.landscape || Orientation.portrait)
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// getter returns instance of MediaQuery object
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// getter returns device screen instance of TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;
}

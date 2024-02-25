import 'package:portfolio/core/shared/exports.dart';

class AppStateNotifier extends StateNotifier<bool?> {
  final Ref ref;
  AppStateNotifier(this.ref) : super(false);

  /// A GlobalKey Type ScaffoldState so we can make changes [Open Drawers, Close Drawer]
  /// Pop A Snackbar and so on from anywhere in the code base  (it's a private variable).
  ///
  static final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  /// A Getter of GlobalKey Type Scaffold to expose/communicate the private variable
  /// indirectly in our codebase.
  ///
  static GlobalKey<ScaffoldState> get key => _key;

  /// A functions that opens Scaffold Drawer and also set the state to true
  ///
  void openDrawer() {
    state = true;
    _key.currentState!.closeDrawer();
  }

  /// A functions that closes Scaffold Drawer and also set the state to false
  ///
  void closeDrawer() {
    state = false;
    _key.currentState!.closeDrawer();
  }
}

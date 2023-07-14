import 'package:portfolio/core/utils/exports.dart';

// dependency injection
final appProvider =
    ChangeNotifierProvider<AppController>((ref) => AppController());

class AppController extends ChangeNotifier {
  ///
  /// a global key generic type scaffold state
  final globalKey = GlobalKey<ScaffoldState>();

  /// checks the state of drawer
  bool isOpen = false;

  // close drawer
  void closeDrawer() {
    isOpen = false;
    globalKey.currentState!.closeDrawer();
    notifyListeners();
  }

  // open drawer
  void openDrawer() {
    isOpen = true;
    globalKey.currentState!.openDrawer();
    notifyListeners();
  }
}

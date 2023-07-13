import 'package:portfolio/core/utils/exports.dart';

class AppController extends GetxController {
  /// instance variable of app controller
  static AppController instance = Get.put(AppController());

  /// a global key generic type scaffold state
  final globalKey = GlobalKey<ScaffoldState>().obs;

  ///
  Rx<bool> isOpen = Rx<bool>(false);

  // close drawer
  void closeDrawer() {
    isOpen.value = false;
    globalKey.value.currentState.closeDrawer();
  }

  // open drawer
  void openDrawer() {
    isOpen.value = true;
    globalKey.value.currentState.openDrawer();
  }
}

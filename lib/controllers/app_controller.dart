import 'package:get/get.dart';
import 'package:portfolio/core/exports.dart';

class AppController extends GetxController {
  static AppController instance = Get.put(AppController());

  @override
  void onReady() {
    super.onReady();
  }

  var globalKey = GlobalKey<ScaffoldState>().obs;
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

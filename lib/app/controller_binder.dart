import 'package:ecom_app/features/common/controllers/main_bottom_nav_bar_controller.dart';
import 'package:ecom_app/features/common/ui/screen/main_bottom_nav_bar_screen.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavBarScreen());
    Get.put(MainBottomNavBarController());
  }
}
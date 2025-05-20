import 'package:get/get.dart';

class MainBottomNavBarController extends GetxController{

  int _selectedIndex = 0;

  int get SelectedIndex => _selectedIndex;

  void changeIndex(int index){
    _selectedIndex = index;
    update();
  }

  void moveToCategory(){
    changeIndex(1);
  }

  void moveToHome(){
    changeIndex(0);
  }
}
import 'package:ecom_app/features/categories/ui/screens/category_list_screen.dart';
import 'package:ecom_app/features/common/controllers/main_bottom_nav_bar_controller.dart';
import 'package:ecom_app/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  static const String name = '/main-nav-bar';

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  final MainBottomNavBarController _bottomNavBarController = Get.find<MainBottomNavBarController>();

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainBottomNavBarController>(
        builder: (controller) {
          return _screens[controller.SelectedIndex];
        }
      ),
      bottomNavigationBar: GetBuilder<MainBottomNavBarController>(
        builder: (controller) {
          return NavigationBar(
            selectedIndex: controller.SelectedIndex,
              onDestinationSelected: controller.changeIndex,
              destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.category), label: 'Category'),
            NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Wishlist'),

          ]);
        }
      ),
    );
  }
}

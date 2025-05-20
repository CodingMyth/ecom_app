import 'package:ecom_app/features/common/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/controllers/main_bottom_nav_bar_controller.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});


  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,__){
        Get.find<MainBottomNavBarController>().moveToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Get.find<MainBottomNavBarController>().moveToHome();
          },
              icon: Icon(Icons.arrow_back)),
          title: Text('Categories'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4,mainAxisSpacing: 16),
              itemBuilder: (context ,index){
                return FittedBox(child: CategoryItem());
              },),
        ),
      ),
    );
  }
}

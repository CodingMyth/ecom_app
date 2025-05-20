import 'package:ecom_app/app/assets_path.dart';
import 'package:ecom_app/features/common/controllers/main_bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/app_bar_action_button.dart';
import '../../../common/widgets/category_item.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/product_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildSearchTextField(),
                const SizedBox(height: 16,),
                HomeCarouselSlider(),
                const SizedBox(height: 16,),
                SectionHeader(
                  title: 'Category',
                  onTabSeeAll: (){
                    Get.find<MainBottomNavBarController>().moveToCategory();
                  },
                ),
                const SizedBox(height: 16,),
                _buildCategoriesSection(),
                const SizedBox(height: 16,),
                SectionHeader(
                  title: 'Popular',
                  onTabSeeAll: (){},
                ),
                const SizedBox(height: 16,),
                _buildProductSection(),
                const SizedBox(height: 16,),
                SectionHeader(
                  title: 'Special',
                  onTabSeeAll: (){},
                ),
                const SizedBox(height: 16,),
                _buildProductSection(),
                const SizedBox(height: 16,),
                SectionHeader(
                  title: 'New',
                  onTabSeeAll: (){},
                ),
                const SizedBox(height: 16,),
                _buildProductSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard()
          ,
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
              ],
            ),
          );
  }

  Widget _buildSearchTextField() {
    return TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              )
            ),
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.logoNavSvg),
      actions: [
        AppBarActionButton(icon: Icons.person_outline,
          onTap: (){},
        ),
        const SizedBox(width: 8),
        AppBarActionButton(icon: Icons.call,
          onTap: (){},
        ),
        const SizedBox(width: 8),
        AppBarActionButton(icon: Icons.notifications_active_outlined,
          onTap: (){},
        ),
      ],
    );
  }
}










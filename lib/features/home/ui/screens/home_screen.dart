import 'package:ecom_app/app/app_colors.dart';
import 'package:ecom_app/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/app_bar_action_button.dart';
import '../widgets/home_carousel_slider.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchTextField(),
            const SizedBox(height: 16,),
            HomeCarouselSlider(),
            const SizedBox(height: 16,),
            SectionHeader(
              title: 'Category',
              onTabSeeAll: (){},
            ),
            Column(
              children: [
                Card(
                  elevation: 0.1,
                  color: AppColors.themeColor.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.computer,size: 48,color: AppColors.themeColor,),
                  ),
                ),
                const Text('Computer')
              ],
            )

          ],
        ),
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







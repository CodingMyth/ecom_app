import 'package:flutter/material.dart';
import '../../../app/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 8),
          elevation: 0.1,
          color: AppColors.themeColor.withOpacity(0.4),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.computer,size: 48,color: AppColors.themeColor,),
          ),
        ),
        const Text('Computer',style: TextStyle(
          color:AppColors.themeColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),),
      ],
    );
  }
}

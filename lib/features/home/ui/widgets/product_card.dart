import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 120,
        child: Column(
          children: [
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                color: AppColors.themeColor.withOpacity(0.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(AssetsPath.dummyShoes),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Nike Nk2 - New Collection',maxLines: 1,style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('100৳',style: TextStyle(
                          color: AppColors.themeColor,
                          fontWeight: FontWeight.w600
                      ),),

                      Wrap(
                        children: [
                          Icon(Icons.star,size: 18,color: Colors.orange,),
                          Text('3.3'),
                        ],
                      ),
                      Card(
                        color: AppColors.themeColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                        child: Icon(Icons.favorite_border,size: 14,color: Colors.white,),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
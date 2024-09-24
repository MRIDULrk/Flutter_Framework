import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/product_list_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Get.to(()=>const ProductListScreen());


      },

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: AppColors.themeColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Icon(Icons.computer,size: 60),
          ),
          const SizedBox(height: 4),
          const Text('Computer',
            style: TextStyle(color: AppColors.themeColor,fontWeight:FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class HorizontalCategoryListView extends StatelessWidget {
  const HorizontalCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

      itemCount: 10,
      itemBuilder: (context,index){
        return const CategoryCard();
      },
      separatorBuilder: (_,__)=>const SizedBox(width:8),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

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
    );
  }
}
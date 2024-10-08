import 'package:crafty_bay/presentation/ui/screens/product_details_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/item_count_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        Get.to(()=>const ProductDetailsScreen());

      },


      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Container(
          width:120,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width:140,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: AppColors.themeColor.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      image:const DecorationImage(image: AssetImage(AssetsPath.dummyImage),
                      )
                  ),
                ),
                const Text('Product Name',maxLines: 1,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$120',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.themeColor,
                    ),),
                    const Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.amber),
                        Text('3',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      color: AppColors.themeColor,
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(Icons.favorite_outline_rounded,color: Colors.white),
                      ),
                    ),

                  ],

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
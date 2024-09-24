import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220,
            onPageChanged: (index,reason){
            _selectedIndex.value=index;
          },
          viewportFraction: 1,
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  const BoxDecoration(
                      color: AppColors.lightBlue,
                      image: DecorationImage(image: AssetImage(AssetsPath.dummyImage))
                    ),
                    
                );
              },
            );
          }).toList(),
        ),


        Positioned(
          bottom: 12,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
          
            builder: (context,currentIndex,_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                for(int i =0;i<5;i++)
                  Container(
                    height: 12,
                    width: 12,
                    margin: const EdgeInsets.only(right:4),
                    decoration: BoxDecoration(
                      color: currentIndex == i ? AppColors.themeColor : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.themeColor),
                    ),
          
                  ),
          
          
                ],
          
              );
            }
          ),
        ),



      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
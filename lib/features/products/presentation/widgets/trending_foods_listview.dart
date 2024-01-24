import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/widgets/trending_foods_listtile.dart';

class TrendingFoodsListView extends StatelessWidget {
  const TrendingFoodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TrendingFoodsListTile(
            foodModel: foodModels[index],
            index: index,
          );
        },
        itemCount: foodModels.length,
      ),
    );
  }
}






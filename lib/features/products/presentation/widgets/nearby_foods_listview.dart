import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/widgets/nearby_foods_listtile.dart';

class NearbyFoodsListView extends StatelessWidget {
  const NearbyFoodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NearbyFoodsListTile(
            foodModel: foodModels[index],
            index: index,
          );
        },
        itemCount: foodModels.length,
      ),
    );
  }
}

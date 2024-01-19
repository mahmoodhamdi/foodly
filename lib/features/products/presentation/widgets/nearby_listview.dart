import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/widgets/nearby_list_item.dart';

class NearbyListView extends StatelessWidget {
  const NearbyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: kWidth,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NearbyListItem(
            restaurantModel: restaurantModels[index],
            index: index,
          );
        },
        itemCount: restaurantModels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

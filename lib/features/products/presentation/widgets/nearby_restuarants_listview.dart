import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/widgets/nearby_restuarnt_tile.dart';

class NearbyRestuarantsListView extends StatelessWidget {
  const NearbyRestuarantsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NearbyResturantTile(
            restaurantModel: restaurantModels[index],
            index: index,
          );
        },
        itemCount: restaurantModels.length,
      ),
    );
  }
}

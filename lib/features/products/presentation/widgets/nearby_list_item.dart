import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/features/products/data/models/restaurants_model.dart';

class NearbyListItem extends StatelessWidget {
  const NearbyListItem({super.key, required this.restaurantModel, required this.index});
  final RestaurantModel restaurantModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 150.w,
      
    );
  }
}

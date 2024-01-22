import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/widgets/foods_listview_item.dart';

class FoodsListView extends StatelessWidget {
  const FoodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      width: kWidth,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return FoodsListviewItem(
            foodModel: foodModels[index],
            index: index,
          );
        },
        itemCount: foodModels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

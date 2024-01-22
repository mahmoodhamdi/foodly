import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/data/models/foods_model.dart';

class FoodsListviewItem extends StatelessWidget {
  const FoodsListviewItem(
      {super.key, required this.foodModel, required this.index, this.onTap});
  final FoodModel foodModel;
  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.0.w),
        child: Container(
            height: 180.h,
            width: kWidth * .75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.r),
                ),
                color: kLightWhite),
            child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.r),
                      ),
                      child: SizedBox(
                        height: 112.h,
                        width: kWidth * .8,
                        child: Image.network(
                          foodModel.imageUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                foodModel.title,
                                style: LightTextStyles.kDark12w500,
                              ),
                              Text(
                                "\$ ${foodModel.price.toStringAsFixed(2)}",
                                style: LightTextStyles.kPrimary12w600,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text(
                                "Delivery Time",
                                style: LightTextStyles.kGray9w500,
                              ),
                              Text(
                                foodModel.time,
                                style: LightTextStyles.kGray9w500,
                              )
                            ],
                          ),
                        ]),
                  ),
                ])),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/data/models/foods_model.dart';
import 'package:foodly/features/products/presentation/widgets/add_to_cart_button.dart';

class TrendingFoodsListTile extends StatelessWidget {
  const TrendingFoodsListTile(
      {super.key, this.onTap, required this.foodModel, required this.index});
  final void Function()? onTap;
  final FoodModel foodModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 70.h,
              width: kWidth,
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.all(Radius.circular(9.r)),
              ),
              child: Container(
                padding: EdgeInsets.all(4.r),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        child: Stack(children: [
                          SizedBox(
                            width: 70.w,
                            height: 70.h,
                            child: Image.network(
                              foodModel.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                              color: kGray.withOpacity(.5),
                              height: 16.h,
                              width: kWidth,
                              child: RatingBarIndicator(
                                rating: foodModel.rating,
                                itemCount: 5,
                                itemSize: 15.h,
                                itemBuilder: (context, index) {
                                  return const Icon(
                                    Icons.star,
                                    color: kSecondary,
                                  );
                                },
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              foodModel.title,
                              style: LightTextStyles.kDark11w400,
                            ),
                            Text(
                              "Delivery Time: ${foodModel.time}",
                              style: LightTextStyles.kGray11w400,
                            ),
                            SizedBox(
                              width: kWidth * 0.7,
                              height: 15.h,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: foodModel.additives.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(right: 5.w),
                                    decoration: BoxDecoration(
                                      color: kSecondaryLight,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(9.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          foodModel.additives[index]["title"],
                                          style: LightTextStyles.kGray8w400,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ]),
                    ]),
              ),
            ),
            Positioned(
                right: 5.w,
                top: 6.h,
                child: Container(
                    width: 60.w,
                    height: 19.h,
                    decoration: BoxDecoration(
                      color: foodModel.isAvailable ? kPrimary : kSecondaryLight,
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    child: Center(
                        child: Text(
                      "\$ ${foodModel.price.toStringAsFixed(2)}",
                      style: LightTextStyles.kLightWhite12w600,
                    )))),
            Positioned(
              right: 75.w,
              top: 6.h,
              child: const AddToCartButton(),
            ),
          ],
        ));
  }
}

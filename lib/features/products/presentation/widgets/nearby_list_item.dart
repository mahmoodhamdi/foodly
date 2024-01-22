import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/data/models/restaurants_model.dart';

class NearbyListItem extends StatelessWidget {
  const NearbyListItem(
      {super.key,
      required this.restaurantModel,
      required this.index,
      this.onTap});
  final RestaurantModel restaurantModel;
  final void Function()? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.0.w),
        child: Container(
            height: 192.h,
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
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.r),
                        ),
                        child: SizedBox(
                          height: 112.h,
                          width: kWidth * .8,
                          child: Image.network(
                            restaurantModel.imageUrl,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10.w,
                          top: 10.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Container(
                                color: kLightWhite,
                                child: Padding(
                                  padding: EdgeInsets.all(2.0.h),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.r),
                                    child: Image.network(
                                      restaurantModel.logoUrl,
                                      fit: BoxFit.cover,
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                  ),
                                )),
                          ))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurantModel.title,
                            style: LightTextStyles.kDark12w500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text(
                                "Delivery Time",
                                style: LightTextStyles.kGray9w500,
                              ),
                              Text(
                                restaurantModel.time,
                                style: LightTextStyles.kGray9w500,
                              )
                            ],
                          ),
                          Row(
                             children: [
                              RatingBarIndicator(
                                rating: restaurantModel.rating,
                                itemCount: 5,
                                itemSize: 15.h,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "+ ${restaurantModel.ratingCount} Reviews",
                                style: LightTextStyles.kGray9w500,
                              ),
                            ],
                          ),
                        ]),
                  ),
                ])),
      ),
    );
  }
}

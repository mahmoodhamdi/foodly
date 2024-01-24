import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/core/utils/constants/constants.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key, this.onTap,
  });
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        width: 19.w,
        height: 19.h,
        decoration: BoxDecoration(
          color: kSecondary,
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        child: Center(
          child: Icon(
            MaterialCommunityIcons.cart_plus,
            size: 15.h,
            color: kLightWhite,
          ),
        ),
      ),
    );
  }
}

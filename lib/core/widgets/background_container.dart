import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(
      {super.key,
      required this.child,
      required this.image,
      required this.color});
  final Widget child;
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHieght,
      width: kWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
        image: DecorationImage(
            image: AssetImage(image), fit: BoxFit.cover, opacity: .7),
      ),
      child: child,
    );
  }
}

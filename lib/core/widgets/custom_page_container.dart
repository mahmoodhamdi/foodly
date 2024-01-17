import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';

class CustomPageContainer extends StatelessWidget {
  const CustomPageContainer({super.key, required this.pageContent});
  final Widget pageContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth,
      height: MediaQuery.of(context).size.height * .75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          width: kWidth,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: pageContent,
          ),
        ),
      ),
    );
  }
}

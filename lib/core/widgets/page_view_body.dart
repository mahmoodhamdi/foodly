import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/widgets/custom_page_container.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.appBar,
    required this.content,
  });
  final Widget appBar;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: SizedBox(
          height: 130,
          child: appBar,
        ),
      ),
      body: SafeArea(
          child: CustomPageContainer(
              pageContent: Container(
        child: content,
      ))),
    );
  }
}

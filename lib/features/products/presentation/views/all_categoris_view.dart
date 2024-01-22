import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/assets.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/core/widgets/background_container.dart';
import 'package:foodly/features/products/presentation/widgets/category_listile.dart';

class AllCategorisView extends StatelessWidget {
  const AllCategorisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "All Categoris",
          style: LightTextStyles.kGrey12w600,
        ),
        backgroundColor: kOffWhite,
      ),
      body: BackgroundContainer(
        image: Assets.imagesRestaurantBk,
        color: Colors.white,
        child: Container(
          height: kHieght,
          padding: EdgeInsets.only(top: 10.h, left: 12.w),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CategoryListile(
                categoryModel: categoriesModelList[index],
              );
            },
            itemCount: categoriesModelList.length - 1,
          ),
        ),
      ),
    );
  }
}

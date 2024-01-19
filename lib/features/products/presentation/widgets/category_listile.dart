import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/data/models/category_model.dart';

class CategoryListile extends StatelessWidget {
  const CategoryListile({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        categoryModel.title,
        style: LightTextStyles.kGrey12w400,
      ),
      leading: CircleAvatar(
          radius: 18.r,
          backgroundColor: kGrayLight,
          child: Image.network(
            categoryModel.imageUrl,
            fit: BoxFit.contain,
          )),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: kGray, size: 15.r),
    );
  }
}

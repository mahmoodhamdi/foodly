import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/app_router.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/data/models/category_model.dart';
import 'package:foodly/features/products/presentation/manager/category_cubit/category_cubit.dart';
import 'package:go_router/go_router.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.index,
required this.categoryModel,
  });
  final CategoryModel categoryModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CategoryCubit>().changeCategoryIndex(index);

        if (categoryModel.title == "More") {
          GoRouter.of(context).push(AppRouter.kAllCategoriesView);
          //to do
          // navigate transition animation
        }
        context.read<CategoryCubit>().changeCategoryIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 8.w),
        padding: EdgeInsets.only(
          top: 4.h,
        ),
        width: kWidth * 0.19,
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            border: Border.all(
                color: context.read<CategoryCubit>().index == index
                    ? kSecondary
                    : kOffWhite,
                width: .5.w)),
        child: Column(children: [
          SizedBox(
            height: 35.h,
            child: Image.network(
              categoryModel.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            categoryModel.title,
            style: LightTextStyles.kDark12w400,
          )
        ]),
      ),
    );
  }
}

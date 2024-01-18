import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/features/products/presentation/manager/category_cubit/category_cubit.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return Container(
            height: 80.h,
            width: kWidth,
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
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
                          categories[index]["imageUrl"],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        categories[index]["title"],
                        style: LightTextStyles.kDark12w400,
                      )
                    ]),
                  ),
                );
              },
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        },
      ),
    );
  }
}

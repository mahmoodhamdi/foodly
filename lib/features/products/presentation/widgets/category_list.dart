import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/constants/uidata.dart';
import 'package:foodly/features/products/presentation/manager/category_cubit/category_cubit.dart';
import 'package:foodly/features/products/presentation/widgets/category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return Container(
            height: 75.h,
            width: kWidth,
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CategoryWidget(
                  categoryModel: categoriesModelList[index],
                  index: index,
                );
              },
              itemCount: categoriesModelList.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        },
      ),
    );
  }
}

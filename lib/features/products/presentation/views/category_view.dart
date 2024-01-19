import 'package:flutter/material.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/features/products/data/models/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.title),
        backgroundColor: kOffWhite,
        elevation: 0,
      ),
      body: const Center(
        child: Text("Category View"),
      ),
    );
  }
}

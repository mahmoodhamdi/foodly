import 'package:flutter/material.dart';
import 'package:foodly/core/utils/app_router.dart';
import 'package:foodly/core/widgets/heading_widget.dart';
import 'package:foodly/core/widgets/page_view_body.dart';
import 'package:foodly/features/products/presentation/widgets/category_list.dart';
import 'package:foodly/features/products/presentation/widgets/custom_app_bar.dart';
import 'package:foodly/features/products/presentation/widgets/foods_list_view.dart';
import 'package:foodly/features/products/presentation/widgets/nearby_listview.dart';
import 'package:go_router/go_router.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewBody(
      appBar: const CustomAppBar(),
      content: Column(
        children: [
          const CategoryList(),
          HeadingWidget(
            title: "Nearby Restaurants",
            onTap: () => GoRouter.of(context).push(
                AppRouter.kRecommendationView,
                extra: "Nearby Restaurants"),
          ),
          const NearbyListView(),
          HeadingWidget(
            title: "Try Something New",
            onTap: () => GoRouter.of(context).push(
                AppRouter.kRecommendationView,
                extra: "Try Something New"),
          ),
          const FoodsListView(),
          HeadingWidget(
            title: "Food Closer To You",
            onTap: () => GoRouter.of(context).push(
                AppRouter.kRecommendationView,
                extra: "Food Closer To You"),
          ),
          const FoodsListView()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodly/core/utils/assets.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/core/widgets/background_container.dart';
import 'package:foodly/features/products/presentation/widgets/trending_foods_listview.dart';

class TrendingFoods extends StatelessWidget {
  const TrendingFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kSecondary,
        title: Text(
          "Trending Foods",
          style: LightTextStyles.kLightWhite13w600,
        ),
      ),
      body: const BackgroundContainer(
          image: Assets.imagesRestaurantBk,
          color: Colors.white,
          child: TrendingFoodsListView()),
    );
  }
}

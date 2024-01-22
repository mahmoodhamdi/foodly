import 'package:flutter/material.dart';
import 'package:foodly/core/utils/assets.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';
import 'package:foodly/core/widgets/background_container.dart';
import 'package:foodly/features/products/presentation/widgets/nearby_restuarants_listview.dart';

class RestuarentsView extends StatelessWidget {
  const RestuarentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title:   Text(
          "title",
          style: LightTextStyles.kGrey13w600,
        ),
      ),
      body:   BackgroundContainer(
          image: Assets.imagesRestaurantBk,
          color: Colors.white,
          child: NearbyRestuarantsListView()),
    );
  }
}

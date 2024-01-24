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
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kSecondary,
        title: Text(
          "Nearby Restuarants",
          style: LightTextStyles.kLightWhite13w600,
        ),
      ),
      body: const BackgroundContainer(
          image: Assets.imagesRestaurantBk,
          color: Colors.white,
          child: NearbyRestuarantsListView()),
    );
  }
}

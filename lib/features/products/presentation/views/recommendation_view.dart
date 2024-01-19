import 'package:flutter/material.dart';
import 'package:foodly/core/utils/constants/constants.dart';
import 'package:foodly/core/utils/styles.dart';

class RecommendationView extends StatelessWidget {
  const RecommendationView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: Text(
          title,
          style: LightTextStyles.kGrey13w600,
        ),
      ),
      body: const Center(
        child: Text("Nearby Restaurants View"),
      ),
    );
  }
}

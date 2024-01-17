import 'package:flutter/material.dart';
import 'package:foodly/core/widgets/page_view_body.dart';
import 'package:foodly/features/products/presentation/widgets/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageViewBody(
      appBar: CustomAppBar(),
      content: Text("Search View"),
    );
  }
}

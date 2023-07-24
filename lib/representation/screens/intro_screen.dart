import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  static const routeName = '/intro_screen';
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildItemIntroScreen(AssetHelper.intro1, 'text', 'abcabc'),
        ],
      ),
    );
  }
  Widget _buildItemIntroScreen(String image, String title ,String description) {
    return Column(
      children: [
        ImageHelper.loadFromAsset(image,height: 375,fit: BoxFit.fitHeight,
        ),
        const SizedBox(height: kMediumPadding *2,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [Text(title,),
            Text(description)],
          ),
        )
      ],
    );
  }
}

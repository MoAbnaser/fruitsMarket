import 'package:flutter/material.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          tittle: 'E Shopping',
          subTittle: 'Explore top Organic fruits & grab them',
          image: 'assets/images/onboarding1.png',
        ),
        PageViewItem(
          tittle: 'Delivery on The way',
          subTittle: 'Get your Order by speed delivery',
          image: 'assets/images/onboarding2.png',
        ),
        PageViewItem(
          tittle: 'Delivery Arrived',
          subTittle: 'order is arrived at your Place',
          image: 'assets/images/onboarding3.png',
        ),
      ],
    );
  }
}

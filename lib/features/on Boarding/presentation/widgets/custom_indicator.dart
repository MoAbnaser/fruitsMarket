import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fruits_market/core/constants/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}) : super(key: key);
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: dotIndex!,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: kMainColor),
        ),
      ),
      dotsCount: 3,
    );
  }
}

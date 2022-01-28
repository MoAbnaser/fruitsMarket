import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.value);
  final double?value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! *value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double?value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! *value!,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

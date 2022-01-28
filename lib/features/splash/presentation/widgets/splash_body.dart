import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:get/get.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/on_boardingView.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 51,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'F',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'ruit Market',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset('assets/images/splash_view_image.png'),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
}

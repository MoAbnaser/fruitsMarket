import 'package:flutter/material.dart';
import 'package:fruits_market/features/Auth/presentation/pages/login/login_view.dart';
import 'package:get/get.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: TextButton(
              onPressed: () {
                Get.to(
                  () => LoginView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 500),
                );
              },
              child: Text(
                'skip>>',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 23,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Get.to(
                  () => LoginView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 500),
                );
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}

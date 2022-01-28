import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/features/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                color: kMainColor,
              ),
              children: [
                TextSpan(
                  text: 'F',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
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
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => CompleteInformationView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlus,
                  text: 'Log in with',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => CompleteInformationView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  color: Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with',
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}

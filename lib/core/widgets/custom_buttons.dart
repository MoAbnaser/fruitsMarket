import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants/constants.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key,this.text, this.onTap}) : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({Key? key, this.text, this.iconData, this.onTap, this.color}) : super(key: key);

  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizontalSpace(2),
            Text(
              text!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}


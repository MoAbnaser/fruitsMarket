import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utiles/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key,this.image,this.subTittle,this.tittle}) : super(key: key);

  final String? tittle;
  final String? subTittle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(24),
        SizedBox(
          height: SizeConfig.defaultSize! *20,
          child: Image.asset(image!),
        ),
        const VerticalSpace(5),
        Text(
          tittle!,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xFF2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(2),
        Text(
          subTittle!,
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xFF78787c),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

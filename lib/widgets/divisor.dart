import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class Divisor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Divider(
        color: AppColors.LIGHT_GREY,
        height: 1,
      ),
    );
  }
}

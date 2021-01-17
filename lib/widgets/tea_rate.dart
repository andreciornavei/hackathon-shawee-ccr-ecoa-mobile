import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TeaRate extends StatelessWidget {

  final int level;
  TeaRate(this.level);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Feather.zap,
          size: 11,
          color: level >= 1  ? AppColors.ECOAR_YELLOW : AppColors.LIGHT_GREY,
        ),
        Icon(
          Feather.zap,
          size: 11,
          color: level >= 2  ? AppColors.ECOAR_YELLOW : AppColors.LIGHT_GREY,
        ),
        Icon(
          Feather.zap,
          size: 11,
          color: level >= 3  ? AppColors.ECOAR_YELLOW : AppColors.LIGHT_GREY,
        ),
        Icon(
          Feather.zap,
          size: 11,
          color: level >= 4  ? AppColors.ECOAR_YELLOW : AppColors.LIGHT_GREY,
        ),
        Icon(
          Feather.zap,
          size: 11,
          color: level >= 5  ? AppColors.ECOAR_YELLOW : AppColors.LIGHT_GREY,
        )
      ],
    );
  }
}

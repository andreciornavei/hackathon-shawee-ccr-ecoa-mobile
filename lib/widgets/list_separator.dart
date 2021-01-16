import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class ListSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 1,
        indent: 20,
        endIndent: 20,
        thickness: 1,
        color: AppColors.LIGHT,
      );
  }
}

import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class P extends StatelessWidget {
  
  final String value;
  P(this.value);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      this.value,
      style: TextStyle(
        color: AppColors.DARK,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

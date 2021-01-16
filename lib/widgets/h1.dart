import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String value;
  final EdgeInsets margin;
  H1(this.value, {this.margin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.margin ?? EdgeInsets.zero,
      child: Text(
        this.value,
        style: TextStyle(
          color: AppColors.DARK,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

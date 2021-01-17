import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String value;
  final EdgeInsets margin;
  final MaterialColor color;
  final double size;
  final TextAlign alignment;

  H1(
    this.value, {
    this.size = 24,
    this.margin,
    this.color,
    this.alignment: TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.margin ?? EdgeInsets.zero,
      child: Text(
        this.value,
        textAlign: alignment,
        style: TextStyle(
          color: this.color ?? AppColors.DARK,
          fontSize: this.size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

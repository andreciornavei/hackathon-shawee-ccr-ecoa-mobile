import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class EcoaCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final bool shadow;
  final Color background;
  final bool border;
  final MaterialColor borderColor;
  final double rounded;

  EcoaCard(
      {this.child,
      this.padding,
      this.margin,
      this.shadow,
      this.background,
      this.border = true,
      this.rounded = 10,
      this.borderColor});

  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: this.margin != null ? this.margin : EdgeInsets.zero,
      padding: this.padding ?? EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: this.background ?? Colors.white,
        border:
            border ? Border.all(color: borderColor ?? AppColors.LIGHT) : null,
        boxShadow: (shadow == null || shadow == true)
            ? <BoxShadow>[
                BoxShadow(
                  blurRadius: 15,
                  color: AppColors.SHADOW,
                  offset: Offset(6, 10),
                ),
              ]
            : null,
        borderRadius: BorderRadius.all(Radius.circular(this.rounded)),
      ),
      child: this.child,
    );
  }
}

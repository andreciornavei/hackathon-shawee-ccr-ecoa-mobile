import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class CardOption extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String label;
  final IconData prefixIcon;
  final Color prefixColor;
  final double prefixSize;
  final IconData sufixIcon;
  final Color sufixColor;
  final double sufixSize;
  final Color color;

  CardOption({
    this.onPressed,
    this.label,
    this.prefixIcon,
    this.prefixColor,
    this.prefixSize,
    this.sufixIcon,
    this.sufixColor,
    this.sufixSize,
    this.color,
  });

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed != null ? this.onPressed : () {},
      splashColor: AppColors.LIGHT,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    prefixIcon != null ? prefixIcon : Icons.help_outline,
                    color: this.prefixColor != null
                        ? this.prefixColor
                        : AppColors.DARK,
                    size: this.prefixSize != null ? this.prefixSize : 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      this.label,
                      style: TextStyle(
                        color: this.color ?? AppColors.DARK,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                sufixIcon != null ? sufixIcon : Icons.arrow_forward_ios,
                color:
                    this.sufixColor != null ? this.sufixColor : AppColors.DARK,
                size: this.sufixSize != null ? this.sufixSize : 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function action;
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  Button({
    this.action,
    this.label,
    this.icon,
    this.backgroundColor = Colors.transparent,
    this.foregroundColor,
    this.fontSize = 14,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: action,
      color: this.backgroundColor,
      disabledColor: AppColors.DARK.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.fontSize,
                color: action == null
                    ? AppColors.WHITE.withOpacity(0.3)
                    : foregroundColor ?? AppColors.DARK,
                fontWeight: this.fontWeight,
              ),
            ),
          ),
          Visibility(
            visible: icon != null,
            child: Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                color: AppColors.WHITE.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6)),
              ),
              child: Icon(
                this.icon,
                color: action == null
                    ? AppColors.WHITE.withOpacity(0.3)
                    : AppColors.WHITE,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

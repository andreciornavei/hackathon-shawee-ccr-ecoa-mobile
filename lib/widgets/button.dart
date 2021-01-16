import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function action;
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color backgroundIcon;
  final Color foregroundColor;
  Button({
    this.action,
    this.label,
    this.icon,
    this.backgroundColor = Colors.transparent,
    this.foregroundColor,
    this.backgroundIcon 
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: action,
      color: this.backgroundColor,
      disabledColor: AppColors.DARK.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: action == null
                    ? AppColors.WHITE.withOpacity(0.3)
                    : foregroundColor ?? AppColors.DARK,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: action == null
                  ? backgroundIcon?.withOpacity(0.3) ?? AppColors.ECOAR_ORANGE.withOpacity(0.3)
                  : backgroundIcon ?? AppColors.ECOAR_ORANGE,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              this.icon,
              color: action == null
                  ? AppColors.WHITE.withOpacity(0.3)
                  : AppColors.WHITE,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}

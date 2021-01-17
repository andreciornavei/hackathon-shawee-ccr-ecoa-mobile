import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

import 'button_icon.dart';

class Input extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final bool disabled;
  final String label;
  final String value;
  final IconData icon;
  final IconData suffixIcon;
  final Function suffixAction;

  const Input({
    this.onChanged,
    this.label,
    this.value,
    this.icon,
    this.suffixIcon,
    this.suffixAction,
    this.obscureText = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(left: 5, top: 0, right: 0, bottom: 0),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        obscureText: obscureText,
        onChanged: onChanged,
        enabled: !this.disabled,
        initialValue: this.value ?? "",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: this.label ?? "",
          icon: Visibility(
            visible: icon != null,
            child: Icon(
              icon,
              size: 21,
              color: AppColors.DARK,
            ),
          ),
          suffixIcon: Visibility(
            visible: suffixIcon != null,
            child: ButtonIcon(
              icon: suffixIcon,
              action: suffixAction,
              color: AppColors.LIGHT_GREY,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

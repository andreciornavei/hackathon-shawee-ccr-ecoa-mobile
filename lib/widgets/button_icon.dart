import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final Function action;
  final IconData icon;
  final MaterialColor color;
  final double buttonSize;
  final double iconSize;
  final MaterialColor backgroundColor;
  final bool fullRounded;

  ButtonIcon({
    @required this.icon,
    this.action,
    this.color,
    this.buttonSize = 32,
    this.iconSize = 21,
    this.backgroundColor,
    this.fullRounded = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.buttonSize,
      height: this.buttonSize,
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(6),
            bottomRight: Radius.circular(6),
            topLeft: Radius.circular(fullRounded ? 6 : 0),
            bottomLeft: Radius.circular(fullRounded ? 6 : 0)
          ),
        ),
        color: backgroundColor ?? AppColors.TRANSPARENT,
        onPressed: action,
        child: Icon(
          icon,
          size: this.iconSize,
          color: color ?? AppColors.DARK,
        ),
      ),
    );
  }
}

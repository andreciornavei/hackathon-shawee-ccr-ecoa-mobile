import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';


class EcoarAppBarAction extends StatelessWidget {
  final Function action;
  final IconData icon;
  final int quantity;

  EcoarAppBarAction(this.action, this.icon, {this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 50,
        child: FlatButton(
          onPressed: action,
          padding: EdgeInsets.zero,
          color: AppColors.WHITE,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Icon(
                icon,
                size: 21,
                color: AppColors.GREEN,
              ),
              Visibility(
                visible: quantity != null,
                child: Positioned(
                  top: -5,
                  right: -10,
                  child: Container(
                    width: 15,
                    height: 15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.DARK,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      quantity.toString() ?? "",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.WHITE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecoar_mobile/models/navitem.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final NavItemModel item;
  final bool selected;
  NavItem(this.item, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            this.item.icon,
            size: 16,
            color: this.selected ? AppColors.ECOAR_ORANGE : AppColors.PURPLE,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: this.selected ? AppColors.ECOAR_ORANGE : AppColors.PURPLE,
                fontSize: 11,
                fontWeight: FontWeight.w600
              ),
              child: Text(this.item.label),
            ),
          )
        ],
      ),
    );
  }
}


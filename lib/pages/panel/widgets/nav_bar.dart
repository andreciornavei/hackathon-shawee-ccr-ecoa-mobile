import 'package:ecoar_mobile/models/navitem.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

import 'nav_item.dart';

class NavBar extends StatelessWidget {
  final List<NavItemModel> items;
  final Function(int index) setSelectedIndex;
  final int selectedIndex;

  NavBar(
    this.items,
    this.selectedIndex,
    this.setSelectedIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        boxShadow: [
          BoxShadow(
            color: AppColors.SHADOW,
            blurRadius: 2,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) {
            var index = items.indexOf(item);
            return Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => this.setSelectedIndex(index),
                child: NavItem(item, this.selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

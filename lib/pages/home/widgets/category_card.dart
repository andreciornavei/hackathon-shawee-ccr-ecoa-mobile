import 'package:ecoar_mobile/models/category.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel item;
  final bool selected;
  final Function action;
  CategoryCard(this.item, this.action, {this.selected = false});

  @override
  Widget build(BuildContext context) {
    final double size = 60;

    return GestureDetector(
      onTap: action,
      child: Container(
        width: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size,
              height: size,
              padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: AppColors.LIGHT,
                borderRadius: BorderRadius.circular(size),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 10,
                    color: AppColors.SHADOW,
                    offset: Offset(4, 8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    item.icon,
                    size: 32,
                    color: AppColors.PURPLE,
                  ),
                ],
              ),
            ),
            Text(
              this.item.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                color: AppColors.PURPLE,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return GestureDetector(
      onTap: action,
      child: Container(
        width: 130,
        height: 130,
        padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        margin: EdgeInsets.only(right: 25, bottom: 5),
        decoration: BoxDecoration(
          color: AppColors.WHITE,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.PURPLE, width: 2),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 1,
              color: Colors.black12,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.item.name,
              style: TextStyle(
                color: AppColors.DARK,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Image.asset(
              "assets/images/icon.png",
              height: 96,
            )                        
          ],
        ),
      ),
    );
  }
}

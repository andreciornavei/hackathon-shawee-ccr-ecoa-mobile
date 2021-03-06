import 'package:ecoar_mobile/models/class.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ClassCard extends StatelessWidget {
  final ClassModel classe;
  final Function onPress;
  ClassCard(this.classe, this.onPress);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onPress,
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: AppColors.LIGHT,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: AppColors.ECOAR_ORANGE.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "#${this.classe.position.toString()}",
                    style: TextStyle(
                      color: AppColors.ECOAR_RED,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    this.classe.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      color: AppColors.DARK.withOpacity(0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "${this.classe.minutes.toString()} min",
                  style: TextStyle(
                    color: AppColors.MUTE,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  width: 21,
                  height: 21,
                  child: FlatButton(
                    onPressed: () => {},
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Feather.play_circle,
                      size: 18,
                      color: AppColors.GREEN,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

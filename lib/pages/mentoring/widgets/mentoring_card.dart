import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/models/mentoring.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/tea_rate.dart';
import 'package:flutter/material.dart';

class MentoringCard extends StatelessWidget {
  final MentoringModel mentoringModel;
  final Function action;
  MentoringCard(this.mentoringModel, {this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: 100,
        padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        decoration: BoxDecoration(
          color: AppColors.LIGHT,
          borderRadius: BorderRadius.circular(6),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 15,
              color: AppColors.SHADOW,
              offset: Offset(6, 10),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.DARK,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      mentoringModel.avatar
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      mentoringModel.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      mentoringModel.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: false,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          mentoringModel.date,
                          style: TextStyle(
                            color: AppColors.MUTE,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        TeaRate(mentoringModel.teaLevel)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

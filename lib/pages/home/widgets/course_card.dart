import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/tea_rate.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final CourseModel courseModel;
  final Function action;
  CourseCard(this.courseModel, {this.action});

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
              blurRadius: 1,
              color: Colors.black12,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.ECOAR_YELLOW,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    courseModel.thumbnail,
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.center
                ),
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
                      courseModel.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      courseModel.description,
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
                          courseModel.producer,
                          style: TextStyle(
                            color: AppColors.MUTE,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        TeaRate(courseModel.teaLevel)
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

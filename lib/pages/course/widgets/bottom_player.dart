import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/models/course.model.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:ecoar_mobile/widgets/button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomPlayer extends StatelessWidget {
  final CourseModel course;
  final Function onPlay;
  BottomPlayer(this.course, this.onPlay);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.BACKGROUND_COLOR,
        boxShadow: [
          BoxShadow(
            color: AppColors.SHADOW,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              color: AppColors.DARK,
              image: DecorationImage(
                image: CachedNetworkImageProvider(course.thumbnail),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "O que é startup?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.DARK,
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: AppColors.DARK,
                    inactiveTrackColor: AppColors.MUTE,
                    trackHeight: 4.0,
                    thumbColor: AppColors.DARK,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                    overlayColor: AppColors.DARK.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
                  ),
                  child: Slider(
                    value: 30,
                    min: 1,
                    max: 100,
                    onChanged: (double val) => {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 42,
            height: 42,
            child: ButtonIcon(
              icon: Feather.play,
              color: AppColors.DARK,
              action: this.onPlay,
              fullRounded: true,
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
    );
  }
}

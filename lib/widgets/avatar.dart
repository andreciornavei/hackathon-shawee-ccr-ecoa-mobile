import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecoar_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final double size;
  Avatar(this.image, { this.size: 60 });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size,
      width: this.size,
      decoration: BoxDecoration(
        color: AppColors.DARK,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            color: AppColors.SHADOW,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(this.size),
        border: Border.all(width: 2, color: AppColors.PURPLE),
        image: DecorationImage(
          image: CachedNetworkImageProvider(image),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

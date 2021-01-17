import 'package:ecoar_mobile/models/homeitem.model.dart';
import 'package:ecoar_mobile/widgets/h1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomeView extends StatelessWidget {
  Widget _build(HomeItemModel item) {
    switch (item.type) {
      case 'h1':
        return SliverToBoxAdapter(
          child: H1(
            item?.data["label"] ?? "undefined",
            margin: EdgeInsets.all(25),
          ),
        );
      case 'categories':
        return SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 25),
            child: Row(children: item?.data ?? []),
          ),
        );
    }
    return SliverToBoxAdapter(
      child: Text('UNDEFINED'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return CustomScrollView(
          slivers: controller.items.map((e) => _build(e)).toList(),
        );
      },
    );
  }
}

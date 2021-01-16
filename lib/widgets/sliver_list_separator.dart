import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'list_separator.dart';

class SliverListSeparator extends StatelessWidget {
  final int total;
  final Function(int index) item;
  final Widget separator;
  SliverListSeparator(this.total, this.item, {this.separator});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final int itemIndex = index ~/ 2;
          if (index.isEven) {
            return item(itemIndex);
          }
          return this.separator ?? ListSeparator();
        },
        semanticIndexCallback: (Widget widget, int localIndex) {
          if (localIndex.isEven) {
            return localIndex ~/ 2;
          }
          return null;
        },
        childCount: math.max(0, total * 2 - 1),
      ),
    );
  }
}

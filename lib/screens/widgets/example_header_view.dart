import 'package:flutter/material.dart';

class ExampleHeaderView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.brown,
      child: SingleChildScrollView(
        child: Column(
          children: [for (int i = 0; i < 10; i++) Text("Example$i")],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 105;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

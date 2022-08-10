import 'package:flutter/material.dart';


class PinnedHeaderView extends SliverPersistentHeaderDelegate {

  @override
  Widget build(BuildContext context,double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.green,
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate)=>true;
}

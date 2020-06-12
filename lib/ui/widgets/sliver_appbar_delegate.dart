import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: lightAccent,
        boxShadow: [
          new BoxShadow(
            color: Colors.black38,
            blurRadius: 4.0,
          )
        ],
      ),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
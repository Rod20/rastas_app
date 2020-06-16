import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

class ToolbarHeader extends StatelessWidget with PreferredSizeWidget {
  final List<Widget> mActions;
  final String mToolbarName;
  final Widget mBottomWidget;

  final Color _appbarLineColor = Color(0xFFEAECEF);
  final double _appbarLineSize = 1.0;

  ToolbarHeader({
    Key key,
    @required this.mToolbarName,
    this.mActions,
    this.mBottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: darkAccent,
      brightness: Brightness.dark,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: lightPrimary),
      title: Text(
        mToolbarName,
        style: TextStyle(
            fontSize: 18.0,
            color: lightPrimary,
            fontFamily: 'SFProDisplay'
        ),
        overflow: TextOverflow.ellipsis,
      ),
      actions: mActions,
      bottom: this.mBottomWidget != null ? this.mBottomWidget : getBottomLine(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  getBottomLine() {
    return PreferredSize(
      child: Container(color: _appbarLineColor, height: _appbarLineSize),
      preferredSize: Size.fromHeight(_appbarLineSize),
    );
  }
}

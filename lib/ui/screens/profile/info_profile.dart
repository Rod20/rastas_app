import 'package:flutter/material.dart';
import 'package:rastas_app/core/blocs/tab/tab_bloc.dart';

class InfoProfile extends StatelessWidget {

  final TabBloc mTabBloc;

  InfoProfile({@required this.mTabBloc});

  final int _infoTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    mTabBloc.changeCurrentIndex(_infoTabIndex);
    return Center(
      child: Text("Hola Mac :v"),
    );
  }
}

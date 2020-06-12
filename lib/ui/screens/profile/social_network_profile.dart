import 'package:flutter/material.dart';
import 'package:rastas_app/core/blocs/tab/tab_bloc.dart';

class SocialNetworkProfile extends StatelessWidget {

  final TabBloc mTabBloc;

  SocialNetworkProfile({@required this.mTabBloc});

  final int _socialNetworkTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    mTabBloc.changeCurrentIndex(_socialNetworkTabIndex);
    return Center(
      child: Text("Hola Rod"),
    );
  }
}

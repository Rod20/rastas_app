import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rastas_app/core/blocs/tab/tab_bloc.dart';

class SocialNetworkProfile extends StatelessWidget {

  final TabBloc mTabBloc;

  SocialNetworkProfile({@required this.mTabBloc});

  final int _socialNetworkTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    mTabBloc.changeCurrentIndex(_socialNetworkTabIndex);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _socialMedia(context,"assets/icons/social/facebook.svg","www.facebook.com/elias.moron",true),
          _socialMedia(context,"assets/icons/social/whatsapp.svg","+591 70 185 764",true),
          _socialMedia(context,"assets/icons/social/flipsnack.png", "www.flipsnack.com/elias1795/",false),
          _socialMedia(context,"assets/icons/social/youtube.svg","www.youtube.com",true),
          _socialMedia(context,"assets/icons/social/instagram.svg","www.instagram.com",true),
          _socialMedia(context,"assets/icons/social/twitter.svg","www.twitter.com",true),
          _socialMedia(context,"assets/icons/social/linkedin.svg","www.linkedin.com",true),
          _socialMedia(context,"assets/icons/social/steam.svg","www.steam.com",true),
          _socialMedia(context,"assets/icons/social/pinterest.svg","www.pinterest.com",true),
        ],
      ),
    );
  }

  Widget _socialMedia(BuildContext context, String icon, String textSocialLink, bool isSvg){
    return Row(
      children: <Widget>[
        _logoSocialMedia(isSvg, icon),
        Expanded(child: _infoSocialMedia(context,textSocialLink))
      ],
    );
  }

  Widget _logoSocialMedia(bool isSvg, String icon) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: isSvg
          ? icon != null
          ? SvgPicture.asset(
        icon,
        height: 40.0,
      )
          : null
          : Image.asset(icon,height: 30.0,),
    );
  }

  Widget _infoSocialMedia(BuildContext context, String textSocialLink) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          textSocialLink,
          style: Theme.of(context).textTheme.button.merge(
            TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
            ),
          ),
        )
    );
  }
}

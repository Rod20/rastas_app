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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _socialMedia(context,"assets/icons/social/facebook.svg","www.facebook.com"),
        _socialMedia(context,"assets/icons/social/whatsapp.svg","+591 77 967 277"),
        _socialMedia(context,"assets/icons/social/youtube.svg","www.youtube.com"),
        _socialMedia(context,"assets/icons/social/instagram.svg","www.instagram.com"),
        _socialMedia(context,"assets/icons/social/twitter.svg","www.twitter.com"),
        _socialMedia(context,"assets/icons/social/linkedin.svg","www.linkedin.com"),
        _socialMedia(context,"assets/icons/social/steam.svg","www.steam.com"),
        _socialMedia(context,"assets/icons/social/pinterest.svg","www.pinterest.com"),
      ],
    );
  }

  Widget _socialMedia(BuildContext context, String icon, String textSocialLink){
    return Row(
      children: <Widget>[
        _logoSocialMedia(icon),
        _infoSocialMedia(context,textSocialLink)
      ],
    );
  }

  Widget _logoSocialMedia(String icon) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: icon != null
          ? SvgPicture.asset(
        icon,
        height: 40.0,
      )
          : null,
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
              fontSize: 16.0,
            ),
          ),
        )
    );
  }
}

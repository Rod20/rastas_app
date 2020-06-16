import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacementNamed(context, "portal_page"));    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Hero(
          tag: "logo.id",
          child: Image.asset("assets/logos/splash.png")
        ),
      ),
    );
  }
}
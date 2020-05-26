import 'package:flutter/material.dart';
import 'package:rastas_app/pages/HomePage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (BuildContext context) => HomePage(),
      },
    );
  }
}
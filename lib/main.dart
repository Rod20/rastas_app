import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_themes.dart';
import 'package:rastas_app/ui/router.dart';
import 'package:rastas_app/ui/screens/home/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'portal_page',
      theme: AppThemes.rastasTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
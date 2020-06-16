import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/resources/app_themes.dart';
import 'package:rastas_app/ui/router.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: darkAccent,
    ));

    return MaterialApp(
      title: 'Material App',
      initialRoute: 'splash_page',
      theme: AppThemes.rastasTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
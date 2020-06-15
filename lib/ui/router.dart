import 'package:flutter/material.dart';
import 'package:rastas_app/ui/screens/cuantoAprendiste/cuanto_aprendiste.dart';
import 'package:rastas_app/ui/screens/home/home_page.dart';
import 'package:rastas_app/ui/screens/portalPage/portal_page.dart';
import 'package:rastas_app/ui/screens/profile/profile.dart';
import 'package:rastas_app/ui/screens/qualitativeDesign/disenio_cualitativo.dart';
import 'package:rastas_app/ui/screens/quantitativeDesign/disenio_cuantitativo.dart';
import 'package:rastas_app/ui/screens/researchPrinciples/research_principles.dart';
import 'package:rastas_app/ui/screens/verbs/verbs.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      //case '/':
        //return MaterialPageRoute(builder: (_) => InitPage()); // esto es para el splash
      case 'portal_page':
        return MaterialPageRoute(builder: (_) => PortalPage());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'des_quan':
        return MaterialPageRoute(builder: (_) => DisenioCuantitativo());
      case 'des_qual':
        return MaterialPageRoute(builder: (_) => DisenioCualitativo());
      case 'res_prin':
        return MaterialPageRoute(builder: (_) => ResearchPrinciples());
      case 'profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case 'verbos':
        return MaterialPageRoute(builder: (_) => Verbs());
      case 'learning':
        return MaterialPageRoute(builder: (_) => CuantoAprendiste());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
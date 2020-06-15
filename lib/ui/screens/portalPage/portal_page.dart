import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/screens/home/home_page.dart';
import 'package:rastas_app/ui/screens/profile/profile.dart';
import 'package:rastas_app/ui/screens/exit/exit.dart';

class PortalPage extends StatefulWidget {

  @override
  _PortalPageState createState() => _PortalPageState();
}

class _PortalPageState extends State<PortalPage> {
  int nroPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _cuerpo(nroPagina),
      bottomNavigationBar: _bottom(),
    );
  }

  Widget _appBar(){
    final _txtStyle = TextStyle(
      inherit: true,
      fontSize: 15.0,
      color: Colors.white,
    );
    return PreferredSize(
        preferredSize: Size.fromHeight(54.0),
        child: Container(
            decoration: BoxDecoration(
                color: darkAccent,
                gradient: LinearGradient(
                    colors: [
                      darkAccent,secondBadgeColor
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter
                )
            ),
            //color: Color.fromRGBO(226,225,223, 1.0),
            padding: EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0,top: 25.0),
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Image.asset('assets/logos/dr.png'),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("Guia basica de",style: _txtStyle,),
                      Text("investigacion",style: _txtStyle,)
                    ],
                  ),
                )
              ],
            )
        )
    );
  }

  Widget _cuerpo(int paginaActual) {
    print("Cuerpos");
    print(paginaActual);
    switch(paginaActual){
      case 0: return HomePage(); // HOME
      case 1: return Exit(); //  SALIDA
      case 2: return Profile();
      default: return HomePage();// PERFIL
    }
  }

  Widget _bottom() {
    return BottomNavigationBar(
      currentIndex: nroPagina,
      selectedItemColor: lightPrimary,
      backgroundColor: darkAccent,
      unselectedItemColor: lightPrimary,
      iconSize: 24.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 10.0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          title: Text('Info'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Perfil'),
        ),
      ],
      onTap: (index){
        setState(() {
          nroPagina = index;
        });
      },
    );
  }
}
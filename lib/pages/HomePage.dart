import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rastas_app/pages/Page1.dart';
import 'package:rastas_app/pages/Page2.dart';
import 'package:rastas_app/pages/Page3.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      fontSize: 20.0,
      color: Colors.white,
          shadows: [
            Shadow( // bottomLeft
        offset: Offset(-1.5, -1.5),
        color: Colors.blue
            ),
            Shadow( // bottomRight
        offset: Offset(1.5, -1.5),
        color: Colors.blue
            ),
            Shadow( // topRight
        offset: Offset(1.5, 1.5),
        color: Colors.blue
            ),
            Shadow( // topLeft
        offset: Offset(-1.5, 1.5),
        color: Colors.blue
            ),
        ],
      );
      final _bxdecoration = BoxDecoration(boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1.5, 1.5))],color: Color.fromRGBO(226,225,223, 1.0));
    return PreferredSize(
      preferredSize: Size.fromHeight(80.0), 
      child: Container(
        decoration: _bxdecoration,
        //color: Color.fromRGBO(226,225,223, 1.0),
        padding: EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0,top: 25.0),
        width: double.infinity,
        child: Row(

          children: <Widget>[
            Image.asset('lib/src/logos/dr.png'),
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
    switch(paginaActual){
      case 0: return Page1();
      case 1: return Page2();
      case 2: return Page3();
      default: return Page1();
      
    }
  }

  Widget _bottom() {
    return BottomNavigationBar(
      
      currentIndex: nroPagina,
      onTap: (index){
        setState(() {
          nroPagina = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono.svg',height: 40.0,),title: Container()),
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono_puerta.svg',height: 40.0,),title: Container()),
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono_persona.svg',height: 40.0,),title: Container()),
      ],
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rastas_app/pages/CuantoAprendiste.dart';
import 'package:rastas_app/pages/DisenioCualitativo.dart';
import 'package:rastas_app/pages/DisenioCuantitativo.dart';
import 'package:rastas_app/pages/Perfil.dart';
import 'package:rastas_app/pages/PrincipiosDeLaInvestigacion.dart';
import 'package:rastas_app/pages/Salida.dart';
import 'package:rastas_app/pages/VerbosPage.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nroPagina = 0;
  int nropgaux=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: (nropgaux!=0)?_cuerpoAux(nropgaux):_cuerpo(nroPagina),
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
    print("Cuerpos");
    print(paginaActual);
    switch(paginaActual){
      case 0: return pageOne(); // HOME
      case 1: return Salida(); //  SALIDA
      case 2: return Perfil(); // PERFIL
      default: return _cuerpoAux(paginaActual);
      
    }
  }
  Widget _cuerpoAux(int paginaActual) {
    print("Cuerpo Aux");
    print(paginaActual);
    switch(paginaActual){
      // 3 Principios de la investigacion
      case 3: return PrincipiosDeLaInvestigacion();
      // 4 Diseño cuantitativo
      case 4: return DisenioCuantitativo();
      // 5 Diseño cualitativo
      case 5: return DisenioCualitativo();
      // 6 Verbos
      case 6: return VerbosPage();
      // 7 Cuanto Aprendiste
      case 7: return CuantoAprendistePage();
      default: return pageOne();
      
    }
  }

  Widget _bottom() {
    return BottomNavigationBar(
      
      currentIndex: nroPagina,
      onTap: (index){
        setState(() {
          nroPagina = index;
          nropgaux = 0;
        });
      },
      items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono.svg',height: 40.0,),title: Container()),
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono_puerta.svg',height: 40.0,),title: Container()),
        BottomNavigationBarItem(icon: SvgPicture.asset('lib/src/icons/icono_persona.svg',height: 40.0,),title: Container()),
      ],
      
    );
  }

    Widget _item(String texto,int i){
    final _bxdecoration = BoxDecoration(
      color: Colors.blue[900],
      borderRadius: BorderRadius.horizontal(left: Radius.circular(30.0),right: Radius.circular(5.0)),
      gradient: LinearGradient(
        colors: [
          Colors.blue,Colors.cyan[200]
        ],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter
      )
    );
    return Stack(

      children: <Widget>[
        Positioned(
          right: 30.0,
          child: GestureDetector(
            onTap: (){
              //print("presiona");
              setState(() {
                nropgaux = i;
                _cuerpoAux(nropgaux);
              });
            },
            child: Container(
              decoration: _bxdecoration,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              height: 65.0,
              width: 200.0,
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(texto,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  //Text("investigacion",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
        
         Container(
           child: Image.asset('lib/src/logos/dr.png',height: 70.0,),
           //color: Colors.red,
           width: 150.0,
        ),
      ],
    );
  }

  Widget pageOne(){
    return Center(
      child: ListView(
        
        children: <Widget>[
          SizedBox(height: 40.0),
          _item("Principios de la investigacion",3),
          SizedBox(height: 20.0),
          _item("Diseño cuantitativo",4),
          SizedBox(height: 20.0),
          _item("Diseño Cualitativo",5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              _btnItem2("Verbos",6),
              _btnItem2("Cuanto aprendiste?",7),
            ],
          ),
        ],
      ),
    );
  }

    Widget _btnItem2(String txt,int i) {
    final _bxdecoration = BoxDecoration(
      color: Colors.blue[100],
      borderRadius: BorderRadius.circular(10.0),
      gradient: LinearGradient(
        colors: [
          Colors.blue[100],Colors.cyan[200]
        ],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter
      )
    );
    return Container(
      margin: EdgeInsets.only(right: 30.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            //right: 30.0,
            child: GestureDetector(
              onTap: (){
              //print("presiona");
              setState(() {
                nropgaux = i;
                _cuerpoAux(nropgaux);
              });
              },
              child: Container(
                decoration: _bxdecoration,
                //color: Colors.blueAccent,
                margin: EdgeInsets.only(left: 30.0,top: 10.0),
                padding: EdgeInsets.symmetric( horizontal: 15.0),
                height: 35.0,
                //width: double.minPositive,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(txt,style: TextStyle(color: Colors.black87,fontSize: 12.0),textAlign: TextAlign.center,),
                    //Text("investigacion",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.greenAccent[700],
             child: Container(),
             radius: 21.0,
             //color: Colors.red,
//           width: 150.0,

            ),
          Positioned(
            left: 1.0,
            top: 1.0,
            child: CircleAvatar(
              
              backgroundColor: Colors.white,
               child: Image.asset('lib/src/logos/personaLupa.png',fit: BoxFit.cover,),
               //color: Colors.red,
//           width: 150.0,

              ),
          ),
           
        ],
      ),
    );
  }
}
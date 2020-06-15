import 'package:flutter/material.dart';
import 'package:rastas_app/ui/screens/cuantoAprendiste/cuanto_aprendiste.dart';
import 'package:rastas_app/ui/screens/qualitativeDesign/disenio_cualitativo.dart';
import 'package:rastas_app/ui/screens/quantitativeDesign/disenio_cuantitativo.dart';
import 'package:rastas_app/ui/screens/researchPrinciples/research_principles.dart';
import 'package:rastas_app/ui/screens/verbs/verbs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: pageOne(context),
        )
    );
  }

  Widget _item(String texto, String page, BuildContext context){
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
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(page);
      },
      child: Row(

        children: <Widget>[
          Container(
            child: Image.asset('assets/logos/dr.png',height: 70.0,),
            //color: Colors.red,
            width: 150.0,
          ),
          Container(
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
        ],
      ),
    );
  }

  Widget pageOne(BuildContext context){
    return Center(
      child: ListView(

        children: <Widget>[
          SizedBox(height: 40.0),
          _item("Principios de la investigacion",'res_prin',context),
          SizedBox(height: 20.0),
          _item("Diseño cuantitativo",'des_quan',context),
          SizedBox(height: 20.0),
          _item("Diseño Cualitativo",'des_qual',context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              _btnItem2("Verbos",'verbs',context),
              _btnItem2("Cuanto aprendiste?",'learning',context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _btnItem2(String txt, String page,BuildContext context) {
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
                Navigator.of(context).pushNamed(page);
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
              child: Image.asset('assets/logos/personaLupa.png',fit: BoxFit.cover,),
              //color: Colors.red,
//           width: 150.0,

            ),
          ),

        ],
      ),
    );
  }
}

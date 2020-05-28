import 'package:flutter/material.dart';

class ResearchPrinciples extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Principios"),
    );
  }

//  Widget _item(String texto){
//    final _bxdecoration = BoxDecoration(
//      color: Colors.blue[900],
//      borderRadius: BorderRadius.horizontal(left: Radius.circular(30.0),right: Radius.circular(5.0)),
//      gradient: LinearGradient(
//        colors: [
//          Colors.blue,Colors.cyan[200]
//        ],
//        begin: FractionalOffset.topCenter,
//        end: FractionalOffset.bottomCenter
//      )
//    );
//    return Stack(//

//      children: <Widget>[
//        Positioned(
//          right: 30.0,
//          child: GestureDetector(
//            onTap: (){print("presiona");},
//            child: Container(
//              decoration: _bxdecoration,
//              padding: EdgeInsets.symmetric(vertical: 10.0),
//              height: 65.0,
//              width: 200.0,
//              //color: Colors.blue,
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(texto,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
//                  //Text("investigacion",style: TextStyle(color: Colors.white),)
//                ],
//              ),
//            ),
//          ),
//        ),
//        
//         Container(
//           child: Image.asset('lib/src/logos/dr.png',height: 70.0,),
//           //color: Colors.red,
//           width: 150.0,
//        ),
//      ],
//    );
//  }
}
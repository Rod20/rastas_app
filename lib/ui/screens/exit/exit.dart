import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

class Exit extends StatefulWidget {

  @override
  _ExitState createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Theme(
            data: ThemeData(
              primaryColor: buttonColor,
            ),
            child: Stepper(
              physics: const NeverScrollableScrollPhysics(),
              type: StepperType.vertical,

              steps: _mySteps(),
              currentStep: this._currentStep,
              onStepTapped: (step){
                setState(() {
                  this._currentStep = step;
                });
              },
              onStepCancel: (){
                Navigator.of(context).pushNamed("portal_page");
                setState(() {

                });
              },
              onStepContinue: (){
                setState(() {
                  if(this._currentStep<this._mySteps().length -1 ){
                    this._currentStep = this._currentStep+1;
                  }else{
                    _currentStep=0;
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _step = [
      Step(
        title: Text("Primer Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Seleccionar proyecto",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/1.png"))
          ],
        ),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text("Segundo Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Formulación de interrogantes",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/2.png"))
          ],
        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text("Tercer Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Recopilación de información",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/3.png"))
          ],
        ),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text("Cuarto Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Elaboración de un registro",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/4.png"))
          ],
        ),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text("Quinto Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Análisis de la información",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/5.png"))
          ],
        ),
        isActive: _currentStep >= 4,
      ),
      Step(
        title: Text("Sexto Paso", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Redacción de la información",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/6.png"))
          ],
        ),
        isActive: _currentStep >= 5,
      ),
    ];
    return _step;
  }
}
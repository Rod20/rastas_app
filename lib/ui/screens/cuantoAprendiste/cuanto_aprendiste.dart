import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/screens/home/home_page.dart';
import 'package:rastas_app/ui/screens/portalPage/portal_page.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class CuantoAprendiste extends StatefulWidget {

  @override
  _CuantoAprendisteState createState() => _CuantoAprendisteState();
}

class _CuantoAprendisteState extends State<CuantoAprendiste> {

  bool isTrue1a, isTrue1b, isTrue1c, isTrue1d;
  bool isTrue2a, isTrue2b, isTrue2c, isTrue2d;
  bool isTrue3a, isTrue3b, isTrue3c, isTrue3d;
  bool isTrue4a, isTrue4b, isTrue4c, isTrue4d;
  bool isTrue5a, isTrue5b, isTrue5c, isTrue5d;
  bool isTrue6a, isTrue6b, isTrue6c, isTrue6d;
  bool isTrue7a, isTrue7b, isTrue7c, isTrue7d;
  bool isTrue8a, isTrue8b, isTrue8c, isTrue8d;
  int _totalPoints;

  List<String> _answerOne = ["Incógnita","Idea","Pregunta","Solución"];
  List<String> _answerTwo = ["Orgánica y Objetiva","Circular y Lineal","Empírica y Sostenible","Secuencial y Abstracta"];
  List<String> _answerThree = ["De forma numérica","De forma abstracta","De manera lógica","Ninguna de las anteriores"];
  List<String> _answerFour = ["Experimentos, Encuestas, Muestreo","Cuestionarios cerrados, Estadísticas","Sospechas, Hipérboles, Cuestionarios","Todas son correctas"];
  List<String> _answerFive = ["Positivista","Cognitivista","Constructivista","Ninguna"];
  List<String> _answerSix = ["Multimétodo","Abstracta","Metódica y Rígida","Epistémica"];
  List<String> _answerSeven = ["Contexto natural","Contexto informático","Contexto vivencial","Contexto espacial"];
  List<String> _answerEigth = ["preguntas abiertas e indagaciones","Preguntas cerradas y antecedentes","Mediante el marco teórico","El investigador las infiere"];

  @override
  void initState() {
    isTrue1a = false; isTrue1b = false; isTrue1c = false; isTrue1d = false;
    isTrue2a = false; isTrue2b = false; isTrue2c = false; isTrue2d = false;
    isTrue3a = false; isTrue3b = false; isTrue3c = false; isTrue3d = false;
    isTrue4a = false; isTrue4b = false; isTrue4c = false; isTrue4d = false;
    isTrue5a = false; isTrue5b = false; isTrue5c = false; isTrue5d = false;
    isTrue6a = false; isTrue6b = false; isTrue6c = false; isTrue6d = false;
    isTrue7a = false; isTrue7b = false; isTrue7c = false; isTrue7d = false;
    isTrue8a = false; isTrue8b = false; isTrue8c = false; isTrue8d = false;
    _totalPoints = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ToolbarHeader(
            mToolbarName: "Cuánto Aprendiste"
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _bodyLearning(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bodyLearning(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _questionWidget(context,"1.- ¿Cuál es el primer paso a para iniciar una investigación?"), //todo question 1
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue1a = !isTrue1a;
                  isTrue1b = false;
                  isTrue1c = false;
                  isTrue1d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue1a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerOne[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue1b = !isTrue1b;
                  isTrue1a = false;
                  isTrue1c = false;
                  isTrue1d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue1b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerOne[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue1c = !isTrue1c;
                  isTrue1a = false;
                  isTrue1b = false;
                  isTrue1d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue1c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerOne[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue1d = !isTrue1d;
                  isTrue1a = false;
                  isTrue1b = false;
                  isTrue1c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue1d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerOne[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),


        _questionWidget(context,"2.- El desarrollo de una investigación debe ser de forma."), //todo question 2
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue2a = !isTrue2a;
                  isTrue2b = false;
                  isTrue2c = false;
                  isTrue2d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue2a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerTwo[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue2b = !isTrue2b;
                  isTrue2a = false;
                  isTrue2c = false;
                  isTrue2d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue2b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerTwo[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue2c = !isTrue2c;
                  isTrue2a = false;
                  isTrue2b = false;
                  isTrue2d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue2c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerTwo[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue2d = !isTrue2d;
                  isTrue2a = false;
                  isTrue2b = false;
                  isTrue2c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue2d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerTwo[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),


        _questionWidget(context,"3.- ¿La investigación cualitativa que tipo de datos recoge para realizar su investigación?"), //todo question 3
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue3a = !isTrue3a;
                  isTrue3b = false;
                  isTrue3c = false;
                  isTrue3d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue3a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerThree[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue3b = !isTrue3b;
                  isTrue3a = false;
                  isTrue3c = false;
                  isTrue3d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue3b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerThree[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue3c = !isTrue3c;
                  isTrue3a = false;
                  isTrue3b = false;
                  isTrue3d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue3c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerThree[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue3d = !isTrue3d;
                  isTrue3a = false;
                  isTrue3b = false;
                  isTrue3c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue3d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerThree[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),

        _questionWidget(context,"4.- Diseña y aplica instrumentos de medición para obtener datos verificables, elija la opción incorrecta."), //todo question 4
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue4a = !isTrue4a;
                  isTrue4b = false;
                  isTrue4c = false;
                  isTrue4d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue4a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFour[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue4b = !isTrue4b;
                  isTrue4a = false;
                  isTrue4c = false;
                  isTrue4d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue4b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFour[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue4c = !isTrue4c;
                  isTrue4a = false;
                  isTrue4b = false;
                  isTrue4d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue4c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFour[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue4d = !isTrue4d;
                  isTrue4a = false;
                  isTrue4b = false;
                  isTrue4c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue4d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFour[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),

        _questionWidget(context,"5.- ¿Qué enfoque se basa la investigación cuantitativa?"), //todo question 5
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue5a = !isTrue5a;
                  isTrue5b = false;
                  isTrue5c = false;
                  isTrue5d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue5a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFive[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue5b = !isTrue5b;
                  isTrue5a = false;
                  isTrue5c = false;
                  isTrue5d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue5b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFive[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue5c = !isTrue5c;
                  isTrue5a = false;
                  isTrue5b = false;
                  isTrue5d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue5c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFive[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue5d = !isTrue5d;
                  isTrue5a = false;
                  isTrue5b = false;
                  isTrue5c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue5d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerFive[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),

        _questionWidget(context,"6.- La investigación cualitativa también es considerada como."), //todo question 6
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue6a = !isTrue6a;
                  isTrue6b = false;
                  isTrue6c = false;
                  isTrue6d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue6a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSix[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue6b = !isTrue6b;
                  isTrue6a = false;
                  isTrue6c = false;
                  isTrue6d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue6b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSix[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue6c = !isTrue6c;
                  isTrue6a = false;
                  isTrue6b = false;
                  isTrue6d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue6c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSix[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue6d = !isTrue6d;
                  isTrue6a = false;
                  isTrue6b = false;
                  isTrue6c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue6d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSix[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),

        _questionWidget(context,"7.- ¿Cuál es el contexto de una investigación cualitativa para su desarrollo?"), //todo question 7
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue7a = !isTrue7a;
                  isTrue7b = false;
                  isTrue7c = false;
                  isTrue7d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue7a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSeven[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue7b = !isTrue7b;
                  isTrue7a = false;
                  isTrue7c = false;
                  isTrue7d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue7b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSeven[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue7c = !isTrue7c;
                  isTrue7a = false;
                  isTrue7b = false;
                  isTrue7d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue7c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSeven[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue7d = !isTrue7d;
                  isTrue7a = false;
                  isTrue7b = false;
                  isTrue7c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue7d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerSeven[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),

        _questionWidget(context,"8.- ¿La investigación cualitativa al no tener hipótesis estricta, como se obtienen los datos de estudio?"), //todo question 8
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue8a = !isTrue8a;
                  isTrue8b = false;
                  isTrue8c = false;
                  isTrue8d = false;
                  _totalPoints++;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue8a
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerEigth[0],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue8b = !isTrue8b;
                  isTrue8a = false;
                  isTrue8c = false;
                  isTrue8d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue8b
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerEigth[1],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue8c = !isTrue8c;
                  isTrue8a = false;
                  isTrue8b = false;
                  isTrue8d = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue8c
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerEigth[2],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  isTrue8d = !isTrue8d;
                  isTrue8a = false;
                  isTrue8b = false;
                  isTrue8c = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isTrue8d
                      ? Icon(
                    Icons.radio_button_checked,
                    size: 24.0,
                    color: darkAccent,
                  )
                      : Icon(
                    Icons.radio_button_unchecked,
                    size: 24.0,
                    color: lightAccent,
                  ),
                ),
              ),
            ),
            Text(
              _answerEigth[3],
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
        SizedBox(height: 24.0),
        Container(
            height: 50.0,
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: RaisedButton(
              color: intermedioColor,
              splashColor: Theme.of(context).splashColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.send),
                  ),
                  Center(
                    child: Text(
                      "Evaluar",
                    ),
                  )
                ],
              ),
              onPressed: (){
                print("Estos son los puntos que tienes ");
                print(_totalPoints);
                Navigator.push(context, MaterialPageRoute(builder: (_) => AlertScreen(totalPoints: _totalPoints)));
              },
            )
        )
      ],
    );
  }

  Widget _questionWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.title,
    );
  }
}

class AlertScreen extends StatelessWidget {
  final int totalPoints;

  const AlertScreen({Key key, this.totalPoints}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 210.0,
          child: AlertDialog(
              title: totalPoints >= 5 ? Text("Felicidades!!!") : Text("Te Falta Repasar Más"),
              content: Column(
                children: <Widget>[
                  totalPoints >= 5 ? Text("Tienes " + "${totalPoints.toString()}"+ " puntos!. Continúa Aprendiendo...") : Text("Vuelve A Intentarlo..."),
                  SizedBox(height: 10.0,),
                  RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Continuar".toUpperCase(),
                        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => PortalPage()));
                      }
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}

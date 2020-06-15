import 'package:flutter/material.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class DisenioCualitativo extends StatelessWidget {

  String _title = "Teoría del diseño cualitativo";
  String _concept = """Estudia la realidad en su contexto natural y cómo sucede, sacando e interpretando fenómenos de acuerdo con las personas implicadas. Se estudia a las personas en el contexto de su pasado y las situaciones actuales en que se encuentran. (Blasco y Pérez, 2007).
  
Se fundamenta en la filosofía idealista para la cual la realidad es socialmente construida por medio de definiciones individuales o colectivas de la situación. El hombre se concibe como sujeto y actor. El significado es producto de la interacción social. La verdad es relativa y subjetiva.

Es la recogida de información basada en la observación de comportamientos naturales, discursos, respuestas abiertas para la posterior interpretación de significados estudiada en una realidad en su contexto natural.

Sostiene que el conocimiento es más subjetivo que objetivo. En este tipo de investigación el investigador aprende de los participantes e intenta mantener una postura de neutralidad mientras recopila datos de ellos.

Se enfoca a comprender y profundizar los fenómenos, explorándolos desde la perspectiva de los participantes en un ambiente natural y en relación con el contexto.""";

  String _featuresTitle = "Características";
  String _featuresOne = "Se basa en el enfoque positivista.";
  String _featuresTwo = "Establece una distancia entre el sujeto y el objeto de estudio para garantizar la objetividad; el sujeto no puede ser parte involucrada del fenómeno ni puede interactuar.";
  String _featuresThree = "Parte de la formulación de una hipótesis a comprobar, derivada del conocimiento de teorías previas.";
  String _featuresFour = "Diseña y aplica instrumentos de medición para obtener datos verificables, los cuales ha de interpretar posteriormente (experimentos, encuestas, muestreo, cuestionarios cerrados, estadísticas, etc.).";
  String _featuresFive = "Su objetivo es hallar leyes generales que expliquen los fenómenos estudiados.";
  String _featuresSix = "Su procedimiento es deductivo. De la hipótesis pasa a la operacionalización de variables, luego recolecta datos, los procesa y, finalmente, los interpreta a la luz de las teorías esgrimidas.";
  String _featuresSeven = "Entraña el riesgo de verse interferida por los prejuicios o juicios de valor que porte el investigador.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarHeader(
          mToolbarName: "Diseño Cuantitativo"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _titleText(_title, context),
              _bodyText(_concept, context,false),
              _titleText(_featuresTitle, context),
              _bodyText(_featuresOne, context,true),
              _bodyText(_featuresTwo, context,true),
              _bodyText(_featuresThree, context,true),
              _bodyText(_featuresFour, context,true),
              _bodyText(_featuresFive, context,true),
              _bodyText(_featuresSix, context,true),
              _bodyText(_featuresSeven, context,true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleText(String title, BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.title.merge(TextStyle(fontSize: 18.0)),
        ),
      ),
    );
  }

  Widget _bodyText(String title, BuildContext context, bool isFeature){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          isFeature ? Icon(Icons.keyboard_arrow_right, size: 17.0,) : SizedBox(),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle.merge(TextStyle(fontSize: 14.0)),
            ),
          ),
        ],
      ),
    );
  }
}
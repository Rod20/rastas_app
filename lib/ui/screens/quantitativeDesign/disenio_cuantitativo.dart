import 'package:flutter/material.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class DisenioCuantitativo extends StatelessWidget {

  String _title = "Teoría del diseño cuantitativo";
  String _concept = """Los estudios cuantitativos siguen un patrón predecible y estructurado el proceso. En una investigación cualitativa se pretende explicar y predecir los fenómenos investigados, buscando regularidades y relaciones causales entre elementos. (p.18)

La investigación cuantitativa, conocida también como metodología cuantitativa, es un modelo de investigación basado en el paradigma positivista, cuyo propósito es hallar leyes generales que expliquen la naturaleza de su objeto de estudio a partir de la observación, la comprobación y la experiencia. Esto es, a partir del análisis de resultados experimentales que arrojan representaciones numéricas o estadísticas verificables.

Es por ello que, tanto los estudios científicos positivistas como la investigación cuantitativa aplicada a las ciencias sociales, se centran en la importancia de la medición y toda clase de datos cuantificables.""";
  String _featuresTitle = "Características";
  String _featuresOne = "Se basa en el enfoque positivista.";
  String _featuresTwo = "Establece una distancia entre el sujeto y el objeto de estudio para garantizar la objetividad; el sujeto no puede ser parte involucrada del fenómeno ni puede interactuar.";
  String _featuresThree = "Parte de la formulación de una hipótesis a comprobar, derivada del conocimiento de teorías previas.";
  String _featuresFour = "Diseña y aplica instrumentos de medición para obtener datos verificables, los cuales ha de interpretar posteriormente (experimentos, encuestas, muestreo, cuestionarios cerrados, estadísticas, etc.).";
  String _featuresFive = "Su objetivo es hallar leyes generales que expliquen los fenómenos estudiados.";
  String _featuresSix = "Su procedimiento es deductivo. De la hipótesis pasa a la operacionalización de variables, luego recolecta datos, los procesa y, finalmente, los interpreta a la luz de las teorías esgrimidas.";


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
              _bodyText(_featuresSix, context,true)
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
import 'package:flutter/material.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class ResearchPrinciples extends StatelessWidget {

  String _title = "Teoría del diseño cuantitativo";
  String _concept = """Los estudios cuantitativos siguen un patrón predecible y estructurado el proceso. En una investigación cualitativa se pretende explicar y predecir los fenómenos investigados, buscando regularidades y relaciones causales entre elementos. (p.18)

La investigación cuantitativa, conocida también como metodología cuantitativa, es un modelo de investigación basado en el paradigma positivista, cuyo propósito es hallar leyes generales que expliquen la naturaleza de su objeto de estudio a partir de la observación, la comprobación y la experiencia. Esto es, a partir del análisis de resultados experimentales que arrojan representaciones numéricas o estadísticas verificables.

Es por ello que, tanto los estudios científicos positivistas como la investigación cuantitativa aplicada a las ciencias sociales, se centran en la importancia de la medición y toda clase de datos cuantificables.""";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarHeader(
          mToolbarName: "Principios De La Investigación"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _titleText(_title, context),
              _bodyText(_concept, context),
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

  Widget _bodyText(String title, BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle.merge(TextStyle(fontSize: 14.0)),
      ),
    );
  }
}
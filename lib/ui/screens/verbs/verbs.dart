import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class Verbs extends StatelessWidget {


  List<String> _verbosCualitativos = ["INTERPRETAR","DEVELAR","EXPLORAR","DIAGNOSTICAR","COMPRENDER","RESIGNIFICAR","DESCRIBIR","INDAGAR"];
  List<String> _verbosExploratoria = ["CONOCER","DETECTAR","INDAGAR","DEFINIR","EXPLORAR","SONDEAR"];
  List<String> _verbosExplicativa = ["COMPROBAR","DETERMINAR","EVALUAR","REACIONAR","DEMOSTRAR","ESTABLECER","EXPLICAR","VERIFICAR"];
  List<String> _verbosDescriptiva = ["ANALIZAR","CARACTERIZAR","DEFINIR","EXAMINAR","CALCULAR","COMPARAR","DESCRIBIR","IDENTIFICAR","CLASIFICAR","CUANTIFICAR","DIAGNOSTICAR","MEDIR"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarHeader(mToolbarName: "Verbos"),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: verbosWidget(context),
              )
          )
      ),
    );
  }

  Widget verbosWidget(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
            child: titleVerb(context,"CUALITATIVA",true, intermedioColor)
        ),
        gridQualitativeVerbs(context,_verbosCualitativos),
        Container(
            padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
            child: titleVerb(context,"CUANTITATIVA",true, darkAccent)
        ),
        Container(
            padding: EdgeInsets.only(bottom: 16.0),
            child: titleVerb(context,"EXPLORATORIA",false, badgeColor)
        ),
        gridQualitativeVerbs(context,_verbosExploratoria),
        Container(
            padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
            child: titleVerb(context,"EXPLICATIVA",false, badgeColor)
        ),
        gridQualitativeVerbs(context,_verbosExplicativa),
        Container(
            padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
            child: titleVerb(context,"DESCRIPTIVA",false, badgeColor)
        ),
        gridQualitativeVerbs(context,_verbosDescriptiva),
      ],
    );
  }

  Widget gridQualitativeVerbs(BuildContext context, List<String> verb){
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3.0,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0),
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      itemBuilder: (BuildContext context, int index) {
        return verbs(context,verb[index]);
      },
      itemCount: verb.length,
    );
  }

  Widget titleVerb(BuildContext context, String title, bool isTitle, Color color){
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16.0, left: 16.0),
        child: Text(
          title,
          style: isTitle
              ? Theme.of(context).textTheme.title.merge(TextStyle(fontSize: 18.0,color: lightPrimary))
              : Theme.of(context).textTheme.title.merge(TextStyle(fontSize: 14.0,color: lightPrimary)),
        ),
      ),
    );
  }
  Widget verbs(BuildContext context, String text){
    return Card(
      color: secondBadgeColor,
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.scatter_plot, size: 12.0,color: lightAccent),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.subtitle.merge(TextStyle(fontSize: 12.0,color: lightPrimary)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
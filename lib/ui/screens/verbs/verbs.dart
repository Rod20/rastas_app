import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/widgets/toolbar_header.dart';

class Verbs extends StatefulWidget {

  @override
  _VerbsState createState() => _VerbsState();
}

class _VerbsState extends State<Verbs> {
  bool isQualitative;
  bool isQuantitative;
  bool isExploratory;
  bool isExplicative;
  bool isDescriptive;

  List<String> _verbosCualitativos = ["INTERPRETAR","DEVELAR","EXPLORAR","DIAGNOSTICAR","COMPRENDER","RESIGNIFICAR","DESCRIBIR","INDAGAR"];
  List<String> _verbosExploratoria = ["CONOCER","DETECTAR","INDAGAR","DEFINIR","EXPLORAR","SONDEAR"];
  List<String> _verbosExplicativa = ["COMPROBAR","DETERMINAR","EVALUAR","REACIONAR","DEMOSTRAR","ESTABLECER","EXPLICAR","VERIFICAR"];
  List<String> _verbosDescriptiva = ["ANALIZAR","CARACTERIZAR","DEFINIR","EXAMINAR","CALCULAR","COMPARAR","DESCRIBIR","IDENTIFICAR","CLASIFICAR","CUANTIFICAR","DIAGNOSTICAR","MEDIR"];

  @override
  void initState() {
    isQualitative = false;
    isQuantitative = false;
    isExploratory = false;
    isExplicative = false;
    isDescriptive = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarHeader(mToolbarName: "Verbos"),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
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

        GestureDetector(
          onTap: (){
            setState(() {
              isQualitative = !isQualitative;
              isQuantitative = false;
              isExploratory = false;
              isExplicative = false;
              isDescriptive = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: lightAccent
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                    "CUALITATIVA",
                    style: TextStyle(color: lightPrimary,fontSize: 22.0, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(isQualitative ? Icons.arrow_drop_down : Icons.arrow_left, color: lightPrimary,)
              ],
            ),
          ),
        ),
        isQualitative
            ? gridQualitativeVerbs(context, _verbosCualitativos)
            : Container(),
        SizedBox(height: 24,),

        GestureDetector(
          onTap: (){
            setState(() {
              isQuantitative = !isQuantitative;
              isQualitative = false;
              isExploratory = false;
              isExplicative = false;
              isDescriptive = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: buttonColor
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "CUANTITATIVA",
                  style: TextStyle(color: lightPrimary,fontSize: 22.0, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(isQuantitative ? Icons.arrow_drop_down : Icons.arrow_left, color: lightPrimary,)
              ],
            ),
          ),
        ),
        SizedBox(height: 4,),
        isQuantitative
            ? GestureDetector(
          onTap: (){
            setState(() {
              isExploratory = !isExploratory;
              isExplicative = false;
              isDescriptive = false;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: secondBadgeColor
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "EXPLORATORIA",
                  style: TextStyle(color: lightPrimary,fontSize: 16.0),
                ),
                Spacer(),
                Icon(isExploratory ? Icons.arrow_drop_down : Icons.arrow_left, color: lightPrimary,)
              ],
            ),
          ),
        )
            : Container(),
        isExploratory
            ? gridQualitativeVerbs(context,_verbosExploratoria)
            : Container(),
        SizedBox(height: 2,),

        isQuantitative
            ? GestureDetector(
          onTap: (){
            setState(() {
              isExplicative = !isExplicative;
              isExploratory = false;
              isDescriptive = false;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: secondBadgeColor
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "EXPLICATIVA",
                  style: TextStyle(color: lightPrimary,fontSize: 16.0),
                ),
                Spacer(),
                Icon(isExplicative ? Icons.arrow_drop_down : Icons.arrow_left, color: lightPrimary,)
              ],
            ),
          ),
        )
            : Container(),
        isExplicative
            ? gridQualitativeVerbs(context,_verbosExplicativa)
            : Container(),
        SizedBox(height: 2,),

        isQuantitative
            ? GestureDetector(
          onTap: (){
            setState(() {
              isDescriptive = !isDescriptive;
              isExploratory = false;
              isExplicative = false;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: secondBadgeColor
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "DESCRIPTIVA",
                  style: TextStyle(color: lightPrimary,fontSize: 16.0),
                ),
                Spacer(),
                Icon(isDescriptive ? Icons.arrow_drop_down : Icons.arrow_left, color: lightPrimary,)
              ],
            ),
          ),
        )
            : Container(),
        isDescriptive
            ? gridQualitativeVerbs(context,_verbosDescriptiva)
            : Container(),
      ],
    );
  }

  Widget gridQualitativeVerbs(BuildContext context, List<String> verb){
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 7.0,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0),
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      itemBuilder: (BuildContext context, int index) {
        return verbs(context,verb[index]);
      },
      itemCount: verb.length,
    );
  }

  Widget verbs(BuildContext context, String text){
    return Card(
      color: intermedioColor,
      elevation: 5.0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle.merge(TextStyle(fontSize: 12.0,color: lightPrimary)),
          ),
        ),
      ),
    );
  }
}
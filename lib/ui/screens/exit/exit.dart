import 'package:flutter/material.dart';
import 'package:rastas_app/core/blocs/tab/tab_bloc.dart';
import 'package:rastas_app/ui/resources/app_colors.dart';

import 'package:rastas_app/core/utils/scroll_top.dart' as scroll;
import 'package:rastas_app/ui/widgets/sliver_appbar_delegate.dart';
import 'package:rastas_app/ui/resources/app_colors.dart' as colors;

class Exit extends StatefulWidget {

  @override
  _ExitState createState() => _ExitState();
}

class _ExitState extends State<Exit>
with SingleTickerProviderStateMixin{
  int _currentStep = 0;
  TabController _tabController;
  TabBloc _tabBloc = new TabBloc();
  final int _defaultIndex = 0;
  final int _socilaNetworkTabIndex = 0;
  final int _infoTabIndex = 1;
  ScrollController infoScrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  List<Widget> _tabTitles(BuildContext context) {

    final tabWidth = MediaQuery.of(context).size.width / 2;

    return <Widget>[
      StreamBuilder(
          stream: _tabBloc.currentIndexStream,
          initialData: _defaultIndex,
          builder: (BuildContext context, AsyncSnapshot snapshot) => InkWell(
              child: Container(width: tabWidth, child: Tab(text: "Proceso")),
              onTap: snapshot.data == _socilaNetworkTabIndex
                  ? () => scroll.scrollToTop(scrollController: infoScrollController)
                  : null
          )
      ),
      StreamBuilder(
          stream: _tabBloc.currentIndexStream,
          initialData: _defaultIndex,
          builder: (BuildContext context, AsyncSnapshot snapshot) => InkWell(
              child: Container(width: tabWidth, child: Tab(text: "Investigación",)),
              onTap: snapshot.data == _infoTabIndex
                  ? () => scroll.scrollToTop(scrollController: infoScrollController)
                  : null
          )
      ),
    ];
  }

  TabBar getTabBar(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.only(right: 2.0, left: 2.0),
      tabs: _tabTitles(context),
      controller: _tabController,
      indicatorColor: lightPrimary,
      labelColor: lightBG,
    );
  }
//##########################################
  TabBarView getTabBarView(var displays, BuildContext context) {
    return TabBarView(
      children: [
        _pageUno(),
        _pageTwo(context)
        //SocialNetworkProfile(mTabBloc: _tabBloc,),
        //InfoProfile(mTabBloc: _tabBloc,)
      ],
      controller: _tabController,
    );
  }
//###########################################
  //_getProfileAppbar(context),
  //        _getProfileInfo(context),
  //        _tabTitles(context)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Theme(
            data: ThemeData(
              primaryColor: buttonColor
            ),
            child: tabProfile(context),
        )
    )
    );
  }

  Widget tabProfile(BuildContext context){
    final int numberOfTabs = 2;

    return DefaultTabController(
      length: numberOfTabs,
      child: NestedScrollView(
        controller: infoScrollController,
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                getTabBar(context),
              ),
              floating: true,
              pinned: true,
            ),
          ];
        },
        /// Profile Content
        body: getTabBarView(_tabItems, context),
      ),
    );
  }

  List<Widget> _tabItems() {
    return [];
  }



  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


//########################3

  Widget _pageUno(){
    _tabBloc.changeCurrentIndex(0);
    return Stepper(
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
          );
  }

List<Step> _mySteps() {
    List<Step> _step = [
      Step(
        title: Text("Teoría", style: TextStyle(color: intermedioColor)),
        content: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[ListTile(
          title: Text(
            "Deducción",
            style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold, fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
        ),
            //Image(image: AssetImage("assets/images/1.png"))
          ],
        ),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text("Hipótesis", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: Text(
            "Operacionalización",
            style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold, fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
        ),
            //Image(image: AssetImage("assets/images/2.png"))
          ],
        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text("Observaciones recolección de datos", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
            title: Text(
              "Procesamiento de datos",
              style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
        ),
            //Image(image: AssetImage("assets/images/3.png"))
          ],
        ),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text("Análisis de datos", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: Text(
            "Interpretación",
            style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold, fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
        ),
            //Image(image: AssetImage("assets/images/4.png"))
          ],
        ),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text("Resultados", style: TextStyle(color: intermedioColor)),
        content: Column(
          children: <Widget>[ListTile(
          title: Text(
            "Inducción",
            style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold, fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
        ),
            //Image(image: AssetImage("assets/images/5.png"))
          ],
        ),
        isActive: _currentStep >= 4,
      )
    ];
    return _step;
  }

  Widget _pageTwo(BuildContext context){
    _tabBloc.changeCurrentIndex(2);
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: colors.secondBadgeColor,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Center(child: _itemCircle("1. Selección del Proyecto")),
          Positioned(top: 80.0, left: size.width/2-55,child: _itemCircle("2. Formulación de Interrogantes"),),
          Positioned(top: size.height/6+40, left: 5,child: _itemCircle("3. Redacción del informe"),),
          Positioned(top: size.height/6+40, right: 5,child: _itemCircle("4. Recopilación de Datos"),),
          Positioned(bottom: 100.0, left: size.width/8,child: _itemCircle("5. Análisis de Información"),),
          Positioned(bottom: 100.0, right: size.width/8,child: _itemCircle("6. Elaboración de un Registro"),),
        ],
      ),
    );
  }

  Widget _itemCircle(String titletxt, [double radio = 55]) {
    return CircleAvatar(
      radius: radio,
      backgroundColor: darkAccent,
      child: CircleAvatar(
          radius: radio - 2,
          backgroundColor: lightPrimary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              titletxt, style: TextStyle(
              inherit: true,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: intermedioColor,
            ),
              textAlign: TextAlign.center,
            ),
          )
        //ListView(
        //  children: <Widget>[
        //    ListTile(title: Text("Hola"),subtitle: Text("Subtitle"),),
        //],),
      ),
    );
  }

}


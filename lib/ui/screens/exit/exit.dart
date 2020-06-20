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
  ScrollController profileScrollController = new ScrollController();

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
              child: Container(width: tabWidth, child: Tab(icon: Icon(Icons.language))),
              onTap: snapshot.data == _socilaNetworkTabIndex
                  ? () => scroll.scrollToTop(scrollController: profileScrollController)
                  : null
          )
      ),
      StreamBuilder(
          stream: _tabBloc.currentIndexStream,
          initialData: _defaultIndex,
          builder: (BuildContext context, AsyncSnapshot snapshot) => InkWell(
              child: Container(width: tabWidth, child: Tab(icon: Icon(Icons.info))),
              onTap: snapshot.data == _infoTabIndex
                  ? () => scroll.scrollToTop(scrollController: profileScrollController)
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
        controller: profileScrollController,
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
    return Stepper(
              type: StepperType.horizontal,
              
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
        title: Text(""), 
        content: Column(
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
        title: Text(""), 
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Formulacion de interrogantes",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/2.png"))
          ],
        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text(""), 
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Recopilacion de informacion",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/3.png"))
          ],
        ),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text(""), 
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Elaboracion de un registro",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/4.png"))
          ],
        ),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text(""), 
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Analisis de la informacion",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
          ),
        ),
            Image(image: AssetImage("assets/images/5.png"))
          ],
        ),
        isActive: _currentStep >= 4,
      ),
      Step(
        title: Text(""), 
        content: Column(
          children: <Widget>[ListTile(
          title: FittedBox(
            child: Text("Redaccion de la informacion",style: TextStyle(color: darkAccent,fontWeight: FontWeight.bold),),
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

  Widget _pageTwo(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: colors.secondBadgeColor,
      child: Stack(
        children: <Widget>[
          Positioned(top: 40.0, left: size.width/2-55,child: _itemCircle("TEORIA","Deduccion"),),
          Positioned(top: size.height/6+10, left: 5,child: _itemCircle("HIPOTESIS","Operacionalizacion"),),
          Positioned(top: size.height/6+10, right: 5,child: _itemCircle("RECOLECCION DE DATOS","Procesamiento de datos"),),
          Positioned(bottom: 65.0, left: size.width/8,child: _itemCircle("ANAILISIS DE DATOS","Interpretacion"),),
          Positioned(bottom: 65.0, right: size.width/8,child: _itemCircle("RESULTADOS","Induccion"),),
          Center(child: _itemCircle("FASES","PRINCIPALES",75)),
        ],
      ),
    );
  } 

  Widget _itemCircle(String titletxt,String subtxt,[double radio = 55]){
    return CircleAvatar(
      radius: radio,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: radio-5,
        backgroundColor: Colors.white,
        child: Expanded(
                  child: ListTile(
                        title: FittedBox(
                          child: Column(
                            children: <Widget>[
                              Text(titletxt,style: TextStyle(
      inherit: true,
      //fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),),
                              Text(subtxt,),
                            ],
                          ),
                        ),
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


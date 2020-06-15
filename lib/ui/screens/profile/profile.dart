import 'package:flutter/material.dart';
import 'package:rastas_app/core/blocs/tab/tab_bloc.dart';
import 'package:rastas_app/core/utils/scroll_top.dart' as scroll;
import 'package:rastas_app/ui/resources/app_colors.dart';
import 'package:rastas_app/ui/screens/profile/info_profile.dart';
import 'package:rastas_app/ui/screens/profile/social_network_profile.dart';
import 'package:rastas_app/ui/widgets/sliver_appbar_delegate.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with SingleTickerProviderStateMixin{
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

  TabBarView getTabBarView(var displays) {
    return TabBarView(
      children: [
        SocialNetworkProfile(mTabBloc: _tabBloc,),
        InfoProfile(mTabBloc: _tabBloc,)
      ],
      controller: _tabController,
    );
  }
  //_getProfileAppbar(context),
  //        _getProfileInfo(context),
  //        _tabTitles(context)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: tabProfile(),
        )
    );
  }

  Widget tabProfile(){
    final double heightScreen = 250.0;
    final int numberOfTabs = 2;

    return DefaultTabController(
      length: numberOfTabs,
      child: NestedScrollView(
        controller: profileScrollController,
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: darkAccent,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              expandedHeight: heightScreen,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: AnimatedOpacity(
                  duration: Duration(milliseconds: 300),
                  opacity: 1.0,
                  child: ListView(
                    children: <Widget>[
                      //_getProfileAppbar(context),
                      _getProfileInfo(context)
                    ],
                  ),
                ),
              ),
            ),
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
        body: getTabBarView(_tabItems),
      ),
    );
  }

  List<Widget> _tabItems() {
    return [];
  }

  Widget _getProfileAppbar(context) {
    final double _appbarSize = 52.0;
    final String _appbarText = "Perfil";
    final double _appbarTopPadding = 16.0;
    final double _appbarBottomPadding = 12.0;

    return Container(
      height: _appbarSize,
      child: Column(
        children: <Widget>[
          SizedBox(height: _appbarTopPadding),
          Text(
            _appbarText,
            style: TextStyle(
              fontSize: 18.0,
              color: lightPrimary,
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(height: _appbarBottomPadding),
        ],
      ),
    );
  }

  Widget _getProfileInfo(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 16.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: _getProfileImage(context),
              ),
              SizedBox(height: 10.0),
              Text(
                "Jhenry E. Moron Morales",
                style: Theme.of(context).textTheme.title.merge(TextStyle(
                  color: lightPrimary
                )),
              ),
              SizedBox(height: 3.0),
              Text(
                "Carrera, Ciencias de la educación",
                style: Theme.of(context).textTheme.subtitle.merge(TextStyle(
                  color: lightPrimary
                )),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getProfileImage(BuildContext context) {

    final double _profilePhotoSize = MediaQuery.of(context).size.height * 0.22;

    return Container(
      width: _profilePhotoSize,
      height: _profilePhotoSize,
      child: ClipOval(
        child: Image.asset(
          "assets/images/rastas_image.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
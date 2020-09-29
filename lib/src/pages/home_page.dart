import 'package:disenos_intermedio/src/pages/animaciones_page.dart';
import 'package:disenos_intermedio/src/pages/emergency_page.dart';
import 'package:disenos_intermedio/src/pages/graficas_circulares_page.dart';
import 'package:disenos_intermedio/src/pages/headers_page.dart';
import 'package:disenos_intermedio/src/pages/pinterest_page.dart';
import 'package:disenos_intermedio/src/pages/slideshow_page.dart';
import 'package:disenos_intermedio/src/pages/sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ScreenHiddenDrawer> items = new List();
  @override
  void initState() {
    items.add(
      new ScreenHiddenDrawer(
        //HeadersPage()
        new ItemHiddenMenu(
          name: 'Custom Painter',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        HeadersPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //AnimacionesPage()
        new ItemHiddenMenu(
          name: 'Cuadrado Animado',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        AnimacionesPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //GraficasCircularesPage()
        new ItemHiddenMenu(
          name: 'Circular Progress Bar',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        GraficasCircularesPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //SlideshowPage()
        new ItemHiddenMenu(
          name: 'Slideshow',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        SlideshowPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //PinterestPage()
        new ItemHiddenMenu(
          name: 'Pinterest',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        PinterestPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //EmergencyPage()
        new ItemHiddenMenu(
          name: 'Emergency Layout',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        EmergencyPage(),
      ),
    );
    items.add(
      new ScreenHiddenDrawer(
        //SliverListPage()
        new ItemHiddenMenu(
          name: 'Sliver List',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        SliverListPage(),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: items,
      //    typeOpen: TypeOpen.FROM_RIGHT,
      //    disableAppBarDefault: false,
      //    enableScaleAnimin: true,
      //    enableCornerAnimin: true,
      slidePercent: 80.0,
      verticalScalePercent: 90.0,
      contentCornerRadius: 40.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      //    enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}

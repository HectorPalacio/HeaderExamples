import 'package:disenos_intermedio/src/models/layout_model.dart';
import 'package:disenos_intermedio/src/pages/launcher_tablet_page.dart';
import 'package:disenos_intermedio/src/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:disenos_intermedio/src/pages/launcher_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => new LayoutModel(),
        child: ChangeNotifierProvider(
          create: (_) => new ThemeChanger(2),
          child: MyApp(),
        ),
      ),
    );

// void main() => runApp(
//     ChangeNotifierProvider(create: (_) => new ThemeChanger(2), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      home: OrientationBuilder(
        builder: (context, orientation) {
          final screenSize = MediaQuery.of(context).size;
          if (screenSize.width > 500) {
            return LauncherTabletPage();
          } else {
            return LauncherPage();
          }
        },
      ),
    );
  }
}

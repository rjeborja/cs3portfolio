import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'buttonlist.dart';
import 'basescaffold.dart';
import 'homepage.dart';
import 'buttonstate.dart';
import 'features.dart';
import 'portfolio.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(
    ChangeNotifierProvider(
      create: (context) => ButtonState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => BaseScaffold(body: HomePage()),
        '/features': (context) => BaseScaffold(body: FeaturesPage()),
        '/portfolio': (context) => BaseScaffold(body: PortfolioHomePage()),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttonlist.dart';
import 'basescaffold.dart';
import 'homepage.dart';
import 'buttonstate.dart';

void main() {
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
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => BaseScaffold(body: HomePage()),
      },
    );
  }
}

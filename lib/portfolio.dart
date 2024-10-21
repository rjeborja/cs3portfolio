import 'dart:math';
import 'package:flutter/material.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  @override
  _PortfolioHomePageState createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final List<String> projects = [
    'Project 1: Flutter App',
    'Project 2: Web Development',
    'Project 3: Machine Learning',
    'Project 4: Mobile Game',
    'Project 5: Data Analysis',
  ];

  String selectedProject = 'Click the button to see a project';

  void showRandomProject() {
    final random = Random();
    setState(() {
      selectedProject = projects[random.nextInt(projects.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              selectedProject,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: showRandomProject,
              child: Text('Show Random Project'),
            ),
          ],
        ),
      ),
    );
  }
}
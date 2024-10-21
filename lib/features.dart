import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: ListView(
        
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.featured_play_list),
            title: Text('Feature 1'),
            subtitle: Text('Description of Feature 1'),
          ),
          ListTile(
            leading: Icon(Icons.featured_play_list),
            title: Text('Feature 2'),
            subtitle: Text('Description of Feature 2'),
          ),
          ListTile(
            leading: Icon(Icons.featured_play_list),
            title: Text('Feature 3'),
            subtitle: Text('Description of Feature 3'),
          ),
        ],
      ),
    );
  }
}
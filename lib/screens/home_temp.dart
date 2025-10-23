import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("TITOL ListTile"),
          ),
          Divider(),
          ListTile(
            title: Text('Titol ListTile'),
          ),
          ListTile(
            title: Text('Titol ListTile'),
          )
        ],
      ),
    );
  }
}
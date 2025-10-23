import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/providers/menu_providers.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista()
    );
  }
}

Widget _llista() {

  return ListView(
    children: _llistaElements(),
  );
}

List<Widget> _llistaElements() {
  print(menuProvider.opcions);

  return [];
}
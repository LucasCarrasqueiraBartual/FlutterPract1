import 'package:flutter/material.dart';


final _icons = <String, IconData>{
  'add_alert' : Icons.add_alert,
  'accessibility': Icons.accessibility,
  'foler_open' : Icons.folder_open
};

Icon getIcon(String nomIcona) {
  return Icon(_icons[nomIcona],color: Colors.blue,);
}
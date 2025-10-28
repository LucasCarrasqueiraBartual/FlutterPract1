import 'package:flutter/material.dart';
import 'package:flutter_application/screens/HomePage.dart';
import 'package:flutter_application/screens/alert_page.dart';
import 'package:flutter_application/screens/avatar_page.dart';
import 'package:flutter_application/screens/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      //home: Homepage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/'     : (BuildContext context) => Homepage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        print("Hem anat a: ${settings.name}");
      },
    );
  }
}
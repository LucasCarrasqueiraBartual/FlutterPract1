

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/HomePage.dart';
import 'package:flutter_application/screens/alert_page.dart';
import 'package:flutter_application/screens/avatar_page.dart';
import 'package:flutter_application/screens/card_page.dart';

final rutes =  <String, WidgetBuilder>{
        '/'     : (BuildContext context) => Homepage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card'  : (BuildContext context) => CardPage()
};
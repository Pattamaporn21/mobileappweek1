import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/Constant.dart';
import 'package:mobileappweek1/sceen/index.dart';
import 'package:mobileappweek1/sceen/login.dart';
import 'package:mobileappweek1/sceen/register.dart';

import 'sceen/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(), //เรียก class
      routes: {
        'login': (context) => login(), //กำหนดชื่อเรียก
        'Register': (context) => Register(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}

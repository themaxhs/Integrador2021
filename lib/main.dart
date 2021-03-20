import 'package:apirest/constants.dart';
import 'package:apirest/screens/rol_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Integrador',
      theme: ThemeData(
        primaryColor: kColorPrimario,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: RolScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'Home.dart';
import 'TelaLogin.dart';
import 'main.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IdFlorestal',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) => TelaLogin(),
        '/home': (context) => IdFlorestalApp(),
      },
    );    
  }
}
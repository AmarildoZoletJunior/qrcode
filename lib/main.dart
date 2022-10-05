import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'TelaPrincipal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final myController = TextEditingController();
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
        backgroundColor: Colors.white,
        body: MyApp1()
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:rehber/liste/liste_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rehber',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListeWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navig/homePage.dart';
void main() {
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MaPageMaison(),
    );
  }
}

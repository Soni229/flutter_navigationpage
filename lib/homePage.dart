import 'package:flutter/material.dart';

class MaPageMaison extends StatefulWidget {
  @override
  _MaPageMaisonState createState() => _MaPageMaisonState();
}

class _MaPageMaisonState extends State<MaPageMaison> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Text('Les boss'),
      ),
    );
  }
}

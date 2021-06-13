import 'package:flutter/material.dart';

class MynewNewpage extends StatefulWidget {
  @override
  _MynewNewpageState createState() => _MynewNewpageState();
}

class _MynewNewpageState extends State<MynewNewpage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newnewpage'),
      ),
      body: Container(
        child: Text('Voici ma toute nouvlle page'),
      ),
    );
  }
}

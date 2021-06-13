import 'package:flutter/material.dart';

class Nelson extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('Soni Page'),
      ),
      body:SafeArea(child: Padding(padding: EdgeInsets.all(13),
      child: Text('Soni Gbogbanou'),),
      ),
    );
  }
}
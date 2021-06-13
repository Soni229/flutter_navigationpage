import 'package:flutter/material.dart';
import 'package:navig/newNewpage.dart';

// ignore: camel_case_types
class classnewPage extends StatefulWidget {
  @override
  _classnewPageState createState() => _classnewPageState();
}

// ignore: camel_case_types
class _classnewPageState extends State<classnewPage> {
  void newnewpage(
      {required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MynewNewpage()),
    );
    fullscreenDialog = fullscreenDialog;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.toc_outlined),
              onPressed: () =>
                  newnewpage(context: context, fullscreenDialog: true))
        ],
        title: Text("Newpage"),
      ),
      body: Container(
        child: Text('Voici ma nouvelle page'),
      ),
    );
  }
}

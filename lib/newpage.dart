import 'package:flutter/material.dart';
import 'package:navig/newNewpage.dart';

// ignore: camel_case_types
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

// ignore: camel_case_types
class _AboutState extends State<About> {
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
        title: Text("About"),
      ),
      body: Container(
        child: Text('This is the about page'),
      ),
    );
  }
}

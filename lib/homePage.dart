import 'package:flutter/material.dart';
import 'package:navig/newpage.dart';
import 'package:navig/gratitude.dart';

class MaPageMaison extends StatefulWidget {
  @override
  _MaPageMaisonState createState() => _MaPageMaisonState();
}

class _MaPageMaisonState extends State<MaPageMaison> {
  String _howAreYou = "..";
  void gotoaboutPage(
      {required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => About()),
    );
    fullscreenDialog = fullscreenDialog;
  }

  void _openPageGratitude(
      {required BuildContext context, bool fullscreenDialog = false}) async {
    final _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => Gratitude(radioGroupValue: -1, key: null)),
    );
    _howAreYou = _gratitudeResponse;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () =>
                gotoaboutPage(context: context, fullscreenDialog: true),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Grateful for:$_howAreYou',
          style: TextStyle(fontSize: 32),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context),
        tooltip: 'About',
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navig/newpage.dart';

class MaPageMaison extends StatefulWidget {
  @override
  _MaPageMaisonState createState() => _MaPageMaisonState();
}

class _MaPageMaisonState extends State<MaPageMaison> {
  void opennewPage(
      {required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => classnewPage()),
    );
    fullscreenDialog = fullscreenDialog;
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () =>
                opennewPage(context: context, fullscreenDialog: true),
          ),
        ],
      ),
      body: Container(
        child: Text('Les boss'),
      ),
    );
  }
}

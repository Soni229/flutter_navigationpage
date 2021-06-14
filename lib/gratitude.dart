import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  final int radioGroupValue;
  @override
  Gratitude({required Key? key, required this.radioGroupValue})
      : super(key: key);
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  // ignore: deprecated_member_use
  List<String?> _gratitudeList = [];
  String? _selectedGratitude;
  int? _radioGroupValue;

  void _radioOnChanged(int? index) {
    setState(() {
      _radioGroupValue = index;
      index == null
          ? _selectedGratitude = ''
          : _selectedGratitude = _gratitudeList[index];
      print('_selectedRadioValue $_selectedGratitude');
    });
  }

  @override
  void initState() {
    super.initState();
    _gratitudeList..add('Family')..add('Friends')..add('Coffee');
    _radioGroupValue = widget.radioGroupValue;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectedGratitude),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Radio(
                  value: 0,
                  groupValue: _radioGroupValue,
                  onChanged: _radioOnChanged),
              Text('Familly'),
              Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: _radioOnChanged,
              ),
              Text('Friends'),
              Radio(
                  value: 2,
                  groupValue: _radioGroupValue,
                  onChanged: _radioOnChanged),
              Text("Coffe"),
            ],
          ),
        ),
      ),
    );
  }
}

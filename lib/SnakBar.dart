import 'package:flutter/material.dart';

void main() {runApp(SnakBar());}

class SnakBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primaryColor: const Color(0xFF43a047),
        accentColor:  Colors.redAccent,
        primaryColorBrightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show SnackBar', style: TextStyle(fontSize: 25.0),),
        textColor: Colors.pinkAccent,
        color: Colors.green,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.cyanAccent,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Hey! This is a SnackBar message.'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
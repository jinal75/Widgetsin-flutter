import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeeksforGeeks',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeeksforGeeks'),
          backgroundColor: Colors.green,
        ),
        body: ModalBottomSheetDemo(),
      ),
    );
  }
}

class ModalBottomSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {

          // when raised button is pressed
          // we display showModalBottomSheet
          showModalBottomSheet<void>(

            // context and builder are
            // required properties in this widget
            context: context,
            builder: (BuildContext context) {

              // we set up a container inside which
              // we create center column and display text
              return Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.blueAccent)),
                ),
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    const ListTile(
                      dense: true,
                      title: Text('this is bottom sheet'),
                    ),
                    const ListTile(
                      dense: true,
                      title: Text('Click OK'),
                    ),
                    ButtonBar(children: [
                      TextButton(onPressed: ()=> Navigator.pop(context), child: Text('OK'))
                    ],)
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

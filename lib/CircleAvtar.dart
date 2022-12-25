import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CircleAvatar Border Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter CircleAvatar Border Example'),
        ),
        body: const Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              //border
              radius: 110,
              backgroundColor: Colors.brown,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg'),
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      radius: 200,

                    ),
                    )

            ),
          ),
        ),
      ),
    );
  }
}
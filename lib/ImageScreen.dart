import 'package:flutter/material.dart';

// function to start app building
void main() => runApp(const ImageScreen());

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

// This widget is the root
// of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Insert Image Demo',
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              // Image.asset('assets/images/output.gif',
              //     height: 200,
              //     scale: 2.5,
              //     // color: Color.fromARGB(255, 15, 147, 59),
              //     opacity:
              //     const AlwaysStoppedAnimation<double>(0.5)), //Image.asset
              Image.asset(
              'asset/velentine.png',
                height: 400,
                width: 400,
              ),
              Image.asset('asset/heart.png',height: 200,width: 200,fit: BoxFit.contain,color: Colors.purple,
              colorBlendMode: BlendMode.colorBurn,semanticLabel: 'Dash mascot',)// Image.asset
            ], //<Widget>[]
          ), //Column
        ), //Center
      ),
    );
  }
}

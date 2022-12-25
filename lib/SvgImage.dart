import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(home:SvgImage()));
// void main() {
//   runApp(SvgImage());
// }

class SvgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SVGIAMGE'),
      ),

      body:
      SvgPicture.asset('asset/dart.svg',

      height: 50,
      width: 30,
      //color: Colors.green,
      semanticsLabel: 'lable',),

    );
  }
}
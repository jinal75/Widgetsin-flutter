import 'package:flutter/material.dart';
import './HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main(){ runApp(ImageSlider()); }

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomeScreen()
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Image Slider Demo"),),
      body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(
              height: 225
          ),
          child: imageSlider(context)),
    );
  }
}

Swiper imageSlider(context){
  return Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return Image.asset('asset/heart.png',height: 200,width: 200,fit: BoxFit.contain,color: Colors.purple,
        colorBlendMode: BlendMode.colorBurn,semanticLabel: 'Dash mascot',
      );




    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}

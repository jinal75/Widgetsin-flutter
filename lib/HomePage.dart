import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final imageList = [
    'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
    'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
    'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
    'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Swiper(
        layout: SwiperLayout.TINDER,
        customLayoutOption:
         CustomLayoutOption(startIndex: -1, stateCount: 4)
        .addRotate([0.0 / 180, 0.0, 0.0 / 180]).addTranslate([
      // new Offset(-310.0, 0.0),
       Offset(-310.0, 0.0),
      Offset(0.0, 0.0),
       Offset(310.0, 0.0),//for right element
    ]),
    itemWidth: 300.0,
    itemHeight: 200.0,
    itemBuilder: (context, index) {
    return Image.network(
    imageList[index],
    fit: BoxFit.fill,
    );
    },
    itemCount: imageList.length)),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(LayoutScreen());

class LayoutScreen extends StatelessWidget {
  // It is the root widget of your application.  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application', theme: ThemeData(
      primarySwatch: Colors.green,),
      home: MyHomePage(title: 'Complex layout example',),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product List")),

        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ProductBox(
                name: "iPhone",
                description: "iPhone is the top branded phone ever",
                price: 55000,
                image: "velentine.png"
            ),
            ProductBox(
                name: "Android",
                description: "Android is a very stylish phone",
                price: 10000,
                image: "heart.png"
            ),
            ProductBox(
                name: "Tablet",
                description: "Tablet is a popular device for official meetings",
                price: 25000,
                image: "layer.png"
            ),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most famous electronic device",
                price: 35000,
                image: "image.jpg"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "image6.jpg"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "image.jpg"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "velentine.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "heart.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "image.jpg"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "image6.jpg"
            ),
          ],
        )
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image}) :
        super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(

        width: 200,


        child: Card(
            child: Row(

                children: <Widget>[
                  Image.asset("asset/$image",height: 100,width: 100,),

                  Expanded(
                      child: Container(

                          child: Column(

                            children: <Widget>[
                              Text(
                                  name, style: const TextStyle(color: Colors.pink,fontSize: 20,fontStyle: FontStyle.normal,
                                shadows: <Shadow>[
                                  // Shadow(
                                  //   offset: Offset(10.0, 10.0),
                                  //   blurRadius: 3.0,
                                  //   color: Color.fromARGB(255, 0, 0, 0),
                                  // ),
                                ]
                              )
                              ),
                              Text(description,style: TextStyle(color: Colors.purple,fontSize: 10,fontStyle: FontStyle.italic),), Text(
                                  "Price: $price"
                              ),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}  
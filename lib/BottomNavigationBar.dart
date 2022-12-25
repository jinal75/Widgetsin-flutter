// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'LayoutScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff2F8D46),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "Bottom Navigation Example",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.work_outline_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            child: RaisedButton(
              onPressed: (){},
              child: const Text('Submit'),
            ),
          ),
          Table(defaultColumnWidth: const FixedColumnWidth(150.0),),

        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter ListView - googleflutter.com'),
        // ),
        body: Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
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
          ),
        ),
      ),
    );
  }
}
class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

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
      ),
    );
  }


}










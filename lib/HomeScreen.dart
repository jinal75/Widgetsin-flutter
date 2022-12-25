import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:onescreentosecondscreendiffclass/ImageScreen.dart';
import 'package:onescreentosecondscreendiffclass/NavigationDrawer.dart';

import './SecondScreen.dart';
import './HomeScreen.dart';
import './AlertDialogShow.dart';
import './FormScreen.dart';
import './LayoutScreen.dart';
import './BottomNavigationBar.dart';
import 'Tabbar.dart';
import 'ImageSlider.dart';
import 'PassData.dart';

class HomeScreen extends StatelessWidget {
  @override
  HomeScreen createState() {
    return HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Toast Notification Example',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Toast Notification Example'),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                    ),
                    RaisedButton(
                      onPressed: showToast,
                      child: Text('Click Here'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AlertDialogShow(),
                          )),
                      child: Text('Click Here'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => FormScreen(),
                          )),
                      child: Text(' Form'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => LayoutScreen(),
                          )),
                      child: Text('Layout'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ImageScreen(),
                          )),
                      child: Text('Image'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const MyApp(),
                          )),
                      child: const Text('Bottom'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Tabbar(),
                          )),
                      child: Text('Tabbar'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ImageSlider(),
                          )),
                      child: Text('ImageSlider'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                NavigationDrawer(),
                          )),
                      child: Text('Drawer'),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const PassData(
                              name: [],
                            ),
                          )),
                      child: const Text('Tabbar'),
                    ),
                  ],
                ),
              ),
            )));
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }
}

void main() => runApp(HomeScreen());

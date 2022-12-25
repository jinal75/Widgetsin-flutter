import 'package:flutter/material.dart';
import './LayoutScreen.dart';
import './SecondScreen.dart';

void main() => runApp(Tabbar());

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LayoutScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/services.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Get Screen Size',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('displaySize : ${MediaQuery.of(context).size}'),
                Text('displayHeight : ${MediaQuery.of(context).size.height}'),
                Text('displayWidth : ${MediaQuery.of(context).size.width}'),
                Text('devicePixelRatio : ${MediaQuery.of(context).devicePixelRatio}'),
                Text('statusBarHeight : ${MediaQuery.of(context).padding.top}'),
                Text('window.physicalSize : ${window.physicalSize}'),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top:0,
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.red
              ),
              child: Center(child: Text("240 240 top 0, left 0")),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.red
              ),
              child: Center(child: Text("240 240, btm : 0, right : 0")),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 24,
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.blue
              ),
              child: Center(child: Text("240 240 , bottom 24, left 24")),
            ),
          )
        ],

      ),
    );
  }
}
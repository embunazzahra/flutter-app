import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
            Icons.add_circle_rounded,
            color: Colors.white,
            size: 28,
          )),
          title: Text(
            'To Do List App',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Colors.lightBlue[200],
              Colors.purpleAccent[400]
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ))
          ],
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}

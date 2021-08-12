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
                gradient: LinearGradient(
                    colors: <Color>[Colors.white70, Colors.purpleAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
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
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.purpleAccent,
            Colors.blue[100],
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}

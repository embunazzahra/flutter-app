import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 330,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      margin: EdgeInsets.only(top: 20),
    ));
  }
}

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
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [MyBox(), MyBox(), MyBox(), MyBox(), MyBox()],
          ),
        ),
      ),
    );
  }
}

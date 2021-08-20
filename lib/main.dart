import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.blue[100],
            Colors.purple[200],
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: MyListView(),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 330,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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

Widget myAppBar() {
  return AppBar(
    leading: IconButton(
        onPressed: () {},
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
        Colors.purpleAccent[100],
        Colors.lightBlue[200],
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 30,
          ))
    ],
    brightness: Brightness.dark,
  );
}

class MyListView extends StatelessWidget {
  final day = ['Mon', 'Tue', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: day.length,
        itemBuilder: (context, index) {
          return Center(
              child: Container(
            width: 330,
            height: 100,
            child: ListTile(
              title: Text(
                day[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(0, 3))
                ]),
            margin: EdgeInsets.only(top: 10, bottom: 10),
          ));
        });
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meal O Mile",
      home: MyMealHome(),
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
    );
  }
}

class MyMealHome extends StatefulWidget {
  @override
  _MyMealHomeState createState() => _MyMealHomeState();
}

class _MyMealHomeState extends State<MyMealHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal O Mile"),
      ),
      body: Center(
        child: Text("My Meal App"),
      ),
    );
  }
}

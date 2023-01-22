import 'package:flutter/material.dart';
import 'package:iheritwidget_demo/InheritedCounter.dart';
import 'package:iheritwidget_demo/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      hidedata: model(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var data = InheritedCounter.of(context)?.hidedata;
    return Scaffold(
      appBar: AppBar(
        title: Text("Abstract With Inherit widget"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(data!.name()), Text(data.dob())],
        ),
      ),
    );
  }
}

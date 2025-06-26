// ignore_for_file: dead_code, use_key_in_widget_constructors, prefer_const_constructors, unused_element, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var count = 0;
  void increamentCounter() {
    setState(
      () => count++
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Center(
              child: const Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "You pressed the button many times",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "$count",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increamentCounter,
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

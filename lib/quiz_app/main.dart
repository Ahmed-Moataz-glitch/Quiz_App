// ignore_for_file: dead_code, use_key_in_widget_constructors, prefer_const_constructors, unused_element, sort_child_properties_last, non_constant_identifier_names, must_be_immutable, body_might_complete_normally_nullable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_basics/quiz_app/widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

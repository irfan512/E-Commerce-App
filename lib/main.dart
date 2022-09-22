import 'package:flutter/material.dart';
import 'package:students_project/View/root.dart';

import 'View/HomeScreem/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Root(),
    );
  }
}

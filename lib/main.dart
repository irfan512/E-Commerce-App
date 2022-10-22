import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/root.dart';
import 'package:students_project/View/splash_screen.dart';

import 'View/HomeScreem/home.dart';

 main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}

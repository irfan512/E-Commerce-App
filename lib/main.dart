import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/root.dart';
import 'package:students_project/View/splash_screen.dart';
import 'package:students_project/json_test.dart';

import 'View/HomeScreem/home.dart';

 main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyAz5CCjDn4OOfGVQOtRjOH6dsvjTUhONLE', appId: '1:961615598561:android:755261eb7b3c315de1b8a0', messagingSenderId: '961615598561', projectId: 'e-commerce-f4134'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: TestDemo(),
      // home: demo(),
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:sushi/splashscreen.dart';
import 'package:sushi/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fome',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}

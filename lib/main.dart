import 'package:flutter/material.dart';
import 'package:notepad/test.dart';

import 'Layout/Layout/layoutScreen.dart';
import 'SplachView/SplachBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
//blackbox
      //web RTc
        primarySwatch: Colors.purple,
      ),
      home: splashBody()
    );
  }
}


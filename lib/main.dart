import 'package:flutter/material.dart';
import 'login.dart';
import 'Q1.dart';
import 'Q2.dart';
import 'Q3.dart';
import 'Q4.dart';
import 'start.dart';
import 'output.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/start': (context) => start(),
        '/Q1': (context) => Q1(),
        '/Q2': (context) => Q2(),
        '/Q3': (context) => Q3(),
        '/Q4': (context) => Q4(),
       // '/out': (context) => output(),

      },

    );
  }
}


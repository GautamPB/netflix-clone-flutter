import 'package:flutter/material.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => Loading(),
        '/': (context) => Home()
      },
    );
  }
}

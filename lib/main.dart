import 'package:flutter/material.dart';
import 'package:flutter_book_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
        primaryColorLight: Colors.lightGreen[300],
        accentColor: Colors.blueGrey[100],
        backgroundColor: Colors.blueGrey[900],
      ),
      home: HomePage(),
    );
  }
}
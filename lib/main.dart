import 'package:flutter/material.dart';
import 'package:object_01/pages/first_page.dart';
import 'package:object_01/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FirstPage(),
      routes: {
        FirstPage.id: (context) => FirstPage(),
        SecondPage.id: (context) => SecondPage(),
      },
    );
  }
}

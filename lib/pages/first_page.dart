import 'dart:math';

import 'package:flutter/material.dart';
import 'package:object_01/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  static String id = "first_page";

  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Instagram"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                number *= 2;
              });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SecondPage.id);
              },
              icon: Icon(Icons.next_plan_rounded))
        ],
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(color: Colors.purple, fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        onPressed: () {
          setState(() {
            number = 1;
          });
        },
        child: Icon(Icons.share),
      ),
    );
  }
}

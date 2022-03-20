import 'package:flutter/material.dart';
import 'package:object_01/pages/first_page.dart';

class SecondPage extends StatefulWidget {
  static String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("photo"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, FirstPage.id);
          }, icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Center(
        child: Image(
          height: 400,
          width: 350,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/img1.jpg'),
        ),

      ),
    );
  }
}

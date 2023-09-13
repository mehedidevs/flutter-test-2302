import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //This is a test commit from flutter file
      
      title: "Bismiallah",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App bar"),
        ),
        body:Center(),
      ),
    );
  }
}

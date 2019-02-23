import 'package:flutter/material.dart';
import 'package:flutter_feb/res/ask_name_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Silver Martian"),
          backgroundColor: Colors.black,
        ),
        body: AskNameScreen(),
      ),
    );
  }
}


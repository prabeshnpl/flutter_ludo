import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ludo"),
        centerTitle: true,
      ),
      body:
      Container(
        height: 200,
        width: 200,
        child: Column(
          children: [

          ],
        ),
      )
      ,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ludo/mainpage.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LUDO",
      debugShowCheckedModeBanner: false,
      home: mainpage(),
    );
  }
}
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
 // Positioned(
          //       //yellow
          // bottom:50.0 ,
          // right: 380.0,
          //   child: FloatingActionButton(
          //     onPressed: shuffle_dice,
          //     child: AnimatedSwitcher(
          //               duration: Duration(milliseconds: 300),
          //               transitionBuilder: (Widget child, Animation<double> animation) 
          //               {
          //               return ScaleTransition(scale: animation, child: child);
          //               },
          //            child: Image.asset("images/$dice_index.jpg",key: ValueKey<int>(dice_index),width: 100,height: 100,),
          //   ),),
          //     ),
          // Positioned(
          //   //blue
          // bottom:550.0 ,
          // right: 380.0,
          //   child: FloatingActionButton(onPressed: shuffle_dice,child: Image.asset("images/$dice_index.jpg"),),
          //     ),
          // Positioned(
          //   //green
          // bottom:50.0 ,
          // right: 1100.0,
          //   child: FloatingActionButton(onPressed: shuffle_dice,child: Image.asset("images/$dice_index.jpg"),),
          //     ),
          // Positioned(
          //   //red
          // bottom:550.0 ,
          // right: 1100.0,
          //   child: FloatingActionButton(onPressed: null,child: Image.asset("images/$dice_index.jpg"),),
          //     ),
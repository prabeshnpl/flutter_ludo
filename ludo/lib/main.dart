import 'package:flutter/material.dart';
import 'package:ludo/fourplayer.dart';
import 'package:ludo/threeplayer.dart';
import 'package:ludo/twoplayer.dart';


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
      title: 'LUDO',
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   AssetImage backgroundImage = AssetImage('assets/images/background.png');
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var _height=screensize.height/8;
    var _width=screensize.width/4;
    return Scaffold(
      body:
      Container(
        height: 1600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: _height/2,
                left: _width/2.3,
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/logo.png'))),
              Positioned(
                top: _height*4,
                left: _width*1.2,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>twoplayer()));
                  }, child: Text("TWO PLAYER",style: TextStyle(fontSize: 20),) ),
               ),
              Positioned(
                top: _height*4.8,
                left: _width*1.1,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>threeplayer()));
                }, child: Text("THREE PLAYER",style: TextStyle(fontSize: 20)) ),
               ),
              Positioned(
                top: _height*5.6,
                left: _width*1.2,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>fourplayer()));
                }, child: Text("FOUR PLAYER",style: TextStyle(fontSize: 20)) ),
               ),
            ],
          ),
      )
          
       
      
    );
  }
}
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
    var height=screensize.height/8;
    var _width=screensize.width;
    var width=screensize.width/4;
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
                top: height/2,
                left:width/2.5,
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/logo.png'))),
              Positioned(
                top: height*4,
                left: width*1.1,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>twoplayer(Screensize:_width)));
                  }, child: Text("TWO PLAYER",style: TextStyle(fontSize: 20),) ),
               ),
              Positioned(
                top: height*4.8,
                left: width,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>threeplayer(Screensize:_width)));
                }, child: Text("THREE PLAYER",style: TextStyle(fontSize: 20)) ),
               ),
              Positioned(
                top: height*5.6,
                left: width*1.1,
                child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>fourplayer(Screensize:_width)));
                }, child: Text("FOUR PLAYER",style: TextStyle(fontSize: 20)) ),
               ),
            ],
          ),
      )
          
       
      
    );
  }
}
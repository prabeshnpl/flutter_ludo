import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(mainpage());
}
class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  final int numberOfRotations = 1; // Set the number of rotations

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Duration for total animation
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 2 * pi * numberOfRotations, // Multiply by number of rotations
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color dice_color=Colors.white;
  var random=Random();
  var turn='red';
  var home='',rolled='Nobody';
  int red_1_position=58,red_2_position=59,red_3_position=60,red_4_position=61;
  int blue_1_position=58,blue_2_position=59,blue_3_position=60,blue_4_position=61;
  int green_1_position=58,green_2_position=59,green_3_position=60,green_4_position=61;
  int yellow_1_position=58,yellow_2_position=59,yellow_3_position=60,yellow_4_position=61;
  int dice=7,dice_index=0;

  void _red_1()
  {
    setState(() {
        if(turn=='red'&&dice_index==1){
          
      if(red_1_position==58&&dice==6)
      {
        red_1_position=1;
      }
      else if(red_1_position>57)
      {
        next_turn();
        return;
      }
      else if(red_1_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      red_1_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _red_2()
  {
    setState(() {
        if(turn=='red'&&dice_index==1){
          
      if(red_2_position==59&&dice==6)
      {
        red_2_position=1;
      }
      else if(red_2_position>57)
      {
        next_turn();
        return;
      }
      else if(red_2_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      red_2_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _red_3()
  {
    setState(() {
        if(turn=='red'&&dice_index==1){
          
      if(red_3_position==60&&dice==6)
      {
        red_3_position=1;
      }
      else if(red_3_position>57)
      {
        next_turn();
        return;
      }
      else if(red_3_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      red_3_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _red_4()
  {
    setState(() {
        if(turn=='red'&&dice_index==1){
          
      if(red_4_position==61&&dice==6)
      {
        red_4_position=1;
      }
      else if(red_4_position>57)
      {
        next_turn();
        return;
      }
      else if(red_4_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      red_4_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
   

  void _blue_1()
  {
    setState(() {
      if(turn=='blue'&&dice_index==1){
          
      if(blue_1_position==58&&dice==6)
      {
        blue_1_position=1;
      }
      else if(blue_1_position>57)
      {
        next_turn();
        return;
      }
      else if(blue_1_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      blue_1_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _blue_2()
  {
    setState(() {
      if(turn=='blue'&&dice_index==1){
          
      if(blue_2_position==59&&dice==6)
      {
        blue_2_position=1;
      }
      else if(blue_2_position>57)
      {
        next_turn();
        return;
      }
      else if(blue_2_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      blue_2_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _blue_3()
  {
    setState(() {
     if(turn=='blue'&&dice_index==1){
          
      if(blue_3_position==60&&dice==6)
      {
        blue_3_position=1;
      }
      else if(blue_3_position>57)
      {
        next_turn();
        return;
      }
      else if(blue_3_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      blue_3_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _blue_4()
  {
    setState(() {
      if(turn=='blue'&&dice_index==1){
          
      if(blue_4_position==61&&dice==6)
      {
        blue_4_position=1;
      }
      else if(blue_4_position>57)
      {
        next_turn();
        return;
      }
      else if(blue_4_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      blue_4_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }

  void _yellow_1()
  {
    setState(() {
      if(turn=='yellow'&&dice_index==1){
          
      if(yellow_1_position==58&&dice==6)
      {
        yellow_1_position=1;
      }
      else if(yellow_1_position>57)
      {
        next_turn();
        return;
      }
      else if(yellow_1_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      yellow_1_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _yellow_2()
  {
    setState(() {
      if(turn=='yellow'&&dice_index==1){
          
      if(yellow_2_position==59&&dice==6)
      {
        yellow_2_position=1;
      }
      else if(yellow_2_position>57)
      {
        next_turn();
        return;
      }
      else if(yellow_2_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      yellow_2_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _yellow_3()
  {
    setState(() {
      if(turn=='yellow'&&dice_index==1){
          
      if(yellow_3_position==60&&dice==6)
      {
        yellow_3_position=1;
      }
      else if(yellow_3_position>57)
      {
        next_turn();
        return;
      }
      else if(yellow_3_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      yellow_3_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
  void _yellow_4()
  {
    setState(() {
      if(turn=='yellow'&&dice_index==1){
          
      if(yellow_4_position==61&&dice==6)
      {
        yellow_4_position=1;
      }
      else if(yellow_4_position>57)
      {
        next_turn();
        return;
      }
      else if(yellow_4_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      yellow_4_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }
 
  void _green_1()
    {
      setState(() {
        if(turn=='green'&&dice_index==1){
          
      if(green_1_position==58&&dice==6)
      {
        green_1_position=1;
      }
      else if(green_1_position>57)
      {
        next_turn();
        return;
      }
      else if(green_1_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      green_1_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
      });
    }
  void _green_2()
    {
      setState(() {
        if(turn=='green'&&dice_index==1){
          
      if(green_2_position==59&&dice==6)
      {
        green_2_position=1;
      }
      else if(green_2_position>57)
      {
        next_turn();
        return;
      }
      else if(green_2_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      green_2_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
      });
    }
  void _green_3()
    {
      setState(() {
        if(turn=='green'&&dice_index==1){
          
      if(green_3_position==60&&dice==6)
      {
        green_3_position=1;
      }
      else if(green_3_position>57)
      {
        next_turn();
        return;
      }
      else if(green_3_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      green_3_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
      });
    }
  void _green_4()
  {
    setState(() {
      if(turn=='green'&&dice_index==1){
          
      if(green_4_position==61&&dice==6)
      {
        green_4_position=1;
      }
      else if(green_4_position>57)
      {
        next_turn();
        return;
      }
      else if(green_4_position==57)
      {
        home="YELLOW HOME";
        next_turn();
        return;
      }
      else
      {
      green_4_position+=dice;
      }
      rolled=turn;
      if(dice!=6)
      {
          next_turn();
      }
      dice_index=0;
      }
    });
  }

  void next_turn()
  {
    if(green_1_position==57&&red_1_position==57&&yellow_1_position==57&&blue_1_position==57)
    {
        turn='white';
    }
    else
    {
      if(turn=='red')
      {
          if(blue_1_position!=57)
          {
            turn='blue';
          }
          else 
          {
            if(yellow_1_position!=57)
            {
              turn ='yellow';
            }
            else
            {
              if(green_1_position!=57)
              {
                turn="green";
              }
              else{
                turn='red';
              }
            }
          }
        }


        else if(turn=='blue')
        {
          if(yellow_1_position!=57)
            {
              turn ='yellow';
            }
            else
            {
              if(green_1_position!=57)
              {
                turn="green";
              }
              else{
                if(red_1_position!=57)
                {
                  turn='red';
                }
                else{
                  turn ='blue';
                }
              }
            }
        }


        else if(turn=='yellow')
        {
          if(green_1_position!=57)
              {
                turn="green";
              }
              else
              {
                if(red_1_position!=57)
                {
                  turn='red';
                }
                else{
                  if(blue_1_position!=57)
                  {
                    turn='blue';
                  }
                  else
                  {
                    turn='yellow';
                  }
                }
              }
        }


        else if(turn=='green')
        {
          if(red_1_position!=57)
                {
                  turn='red';
                }
                else{
                  if(blue_1_position!=57)
                  {
                    turn='blue';
                  }
                  else
                  {
                    if(yellow_1_position!=57)
                    {
                       turn='yellow';
                    }
                    else 
                    {
                      turn='green';
                    }
                  }
                }
        }
    }

    if(turn=='red')
    {
      dice_color=Colors.red;
    }
    else if(turn=='blue')
    {
      dice_color=Colors.blue;
    }
    else if(turn=='green')
    {
      dice_color=Colors.green;
    }
    else if(turn=='yellow')
    {
      dice_color=Colors.yellow;
    }
    else 
    {
      dice_color=Colors.white;
    }

  }

  void reset()
  {
    setState(() {
      home='';
      red_1_position=blue_1_position=green_1_position=yellow_1_position=58;
      red_2_position=blue_2_position=green_2_position=yellow_2_position=59;
      red_3_position=blue_3_position=green_3_position=yellow_3_position=60;
      red_4_position=blue_4_position=green_4_position=yellow_4_position=61;
      dice=7;
      turn='red';
      rolled='Nobody';
      dice_index=0;
    });
  }
  
  void roll_dice()
  {
    setState(() {
      if(dice_index==0)
      {
        rolled=turn;
        dice=random.nextInt(6)+1;
         _controller.forward();
        if(turn=='blue'&&blue_1_position==58&&blue_2_position==59&&blue_3_position==60&&blue_4_position==61&&dice!=6)
      {
        next_turn();
      }
      else if(turn=='red'&&red_1_position==58&&red_2_position==59&&red_3_position==60&&red_4_position==61&&dice!=6)
      {
        next_turn();
      }
      else if(turn=='yellow'&&yellow_1_position==58&&yellow_2_position==59&&yellow_3_position==60&&yellow_4_position==61&&dice!=6)
      {
        next_turn();
      }
      else if(turn=='green'&&green_1_position==58&&green_2_position==59&&green_3_position==60&&green_4_position==61&&dice!=6)
      {
        next_turn();
      }
      else{
        dice_index=1;}
        
        }
    });
  }
  final List<Offset> path_blue=[
                     Offset(8, 0),Offset(8, 1),Offset(8, 2),Offset(8, 3),Offset(8, 4) ,Offset(8, 5),
                     Offset(9, 6),Offset(10, 6),Offset(11, 6),Offset(12, 6) ,Offset(13, 6),Offset(14, 6),
                     Offset(14, 7),
                     Offset(14, 8),Offset(13, 8),Offset(12, 8),Offset(11, 8),Offset(10, 8),Offset(9, 8),
                     Offset(8, 9),Offset(8, 10),Offset(8, 11),Offset(8, 12),Offset(8, 13),Offset(8, 14),
                     Offset(7, 14),
                     Offset(6, 14),Offset(6, 13),Offset(6, 12),Offset(6, 11),Offset(6, 10),Offset(6, 9),
                     Offset(5, 8),Offset(4, 8),Offset(3, 8),Offset(2, 8),Offset(1, 8),Offset(0, 8),
                     Offset(0, 7),
                     Offset(0, 6),Offset(1, 6),Offset(2, 6),Offset(3, 6),Offset(4, 6),Offset(5, 6),
                     Offset(6, 5),Offset(6, 4),Offset(6, 3),Offset(6, 2),Offset(6, 1),Offset(6, 0),
                     Offset(7, 0),
                     Offset(7, 1),Offset(7, 2),Offset(7, 3),Offset(7, 4),Offset(7, 5),Offset(7, 6),
                     //blue box offset
                     Offset(11, 2),Offset(11, 3),Offset(12, 2),Offset(12, 3),
  ];
  final List<Offset> path_red=[
                     Offset(0, 6),Offset(1, 6),Offset(2, 6),Offset(3, 6),Offset(4, 6),Offset(5, 6),
                     Offset(6, 5),Offset(6, 4),Offset(6, 3),Offset(6, 2),Offset(6, 1),Offset(6, 0),
                     Offset(7, 0),
                     Offset(8, 0),Offset(8, 1),Offset(8, 2),Offset(8, 3),Offset(8, 4) ,Offset(8, 5),
                     Offset(9, 6),Offset(10, 6),Offset(11, 6),Offset(12, 6) ,Offset(13, 6),Offset(14, 6),
                     Offset(14, 7),
                     Offset(14, 8),Offset(13, 8),Offset(12, 8),Offset(11, 8),Offset(10, 8),Offset(9, 8),
                     Offset(8, 9),Offset(8, 10),Offset(8, 11),Offset(8, 12),Offset(8, 13),Offset(8, 14),
                     Offset(7, 14),
                     Offset(6, 14),Offset(6, 13),Offset(6, 12),Offset(6, 11),Offset(6, 10),Offset(6, 9),
                     Offset(5, 8),Offset(4, 8),Offset(3, 8),Offset(2, 8),Offset(1, 8),Offset(0, 8),
                     Offset(0, 7),
                     Offset(1, 7),Offset(2, 7),Offset(3, 7),Offset(4, 7),Offset(5, 7),Offset(6, 7),
                     
                     //red box offset
                     Offset(2, 2),Offset(3, 2),Offset(2, 3),Offset(3, 3),
  ];
  final List<Offset> path_green=[
                     Offset(6, 14),Offset(6, 13),Offset(6, 12),Offset(6, 11),Offset(6, 10),Offset(6, 9),
                     Offset(5, 8),Offset(4, 8),Offset(3, 8),Offset(2, 8),Offset(1, 8),Offset(0, 8),
                     Offset(0, 7),
                     Offset(0, 6),Offset(1, 6),Offset(2, 6),Offset(3, 6),Offset(4, 6),Offset(5, 6),
                     Offset(6, 5),Offset(6, 4),Offset(6, 3),Offset(6, 2),Offset(6, 1),Offset(6, 0),
                     Offset(7, 0),
                     Offset(8, 0),Offset(8, 1),Offset(8, 2),Offset(8, 3),Offset(8, 4) ,Offset(8, 5),
                     Offset(9, 6),Offset(10, 6),Offset(11, 6),Offset(12, 6) ,Offset(13, 6),Offset(14, 6),
                     Offset(14, 7),
                     Offset(14, 8),Offset(13, 8),Offset(12, 8),Offset(11, 8),Offset(10, 8),Offset(9, 8),
                     Offset(8, 9),Offset(8, 10),Offset(8, 11),Offset(8, 12),Offset(8, 13),Offset(8, 14),
                     Offset(7, 14),
                     
                     
                     Offset(7, 13),Offset(7, 12),Offset(7, 11),Offset(7, 10),Offset(7, 9),Offset(7, 8),
                     //green box offset
                     Offset(2, 11),Offset(3, 11),Offset(2, 12),Offset(3, 12),
  ];
  final List<Offset> path_yellow=[
                     Offset(14, 8),Offset(13, 8),Offset(12, 8),Offset(11, 8),Offset(10, 8),Offset(9, 8),
                     Offset(8, 9),Offset(8, 10),Offset(8, 11),Offset(8, 12),Offset(8, 13),Offset(8, 14),
                     Offset(7, 14),
                     Offset(6, 14),Offset(6, 13),Offset(6, 12),Offset(6, 11),Offset(6, 10),Offset(6, 9),
                     Offset(5, 8),Offset(4, 8),Offset(3, 8),Offset(2, 8),Offset(1, 8),Offset(0, 8),
                     Offset(0, 7),

                     Offset(0, 6),Offset(1, 6),Offset(2, 6),Offset(3, 6),Offset(4, 6),Offset(5, 6),
                     Offset(6, 5),Offset(6, 4),Offset(6, 3),Offset(6, 2),Offset(6, 1),Offset(6, 0),
                     Offset(7, 0),
                     Offset(8, 0),Offset(8, 1),Offset(8, 2),Offset(8, 3),Offset(8, 4) ,Offset(8, 5),
                     Offset(9, 6),Offset(10, 6),Offset(11, 6),Offset(12, 6) ,Offset(13, 6),Offset(14, 6),
                     Offset(14, 7),
                     
                     Offset(13, 7),Offset(12, 7),Offset(11, 7),Offset(10, 7),Offset(9, 7),Offset(8, 7),
                     
                     //yellow box offset
                     Offset(11, 11),Offset(12, 11),Offset(11, 12),Offset(12, 12),
  ];
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var blocksize= screensize.width/15;
    return MaterialApp(
      title: "test",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LUDO'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
       body: Padding(
            padding: const EdgeInsets.only(top:100),
            child: Stack(
              children: [
                //home text
                     Positioned(
                 top: 300,
                 left: 800,
                  child: Text(home)),
              //blue box
                Positioned(
                  left: blocksize*9,
                  top: blocksize*0,
                  child:Container(
                    height: blocksize*6,
                    width: blocksize*6,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Container(
                        height: blocksize*4,
                        width: blocksize*4,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
              //red box
                Positioned(
                  left: blocksize*0,
                  top: blocksize*0,
                  child:Container(
                    height: blocksize*6,
                    width: blocksize*6,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                      child: Container(
                        height: blocksize*4,
                        width: blocksize*4,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
               //green box
                Positioned(
                  left: blocksize*0,
                  top: blocksize*9,
                  child:Container(
                    height: blocksize*6,
                    width: blocksize*6,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                      child: Container(
                        height: blocksize*4,
                        width: blocksize*4,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
                //yellow box
                Positioned(
                  left: blocksize*9,
                  top: blocksize*9,
                  child:Container(
                    height: blocksize*6,
                    width: blocksize*6,
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Center(
                      child: Container(
                        height: blocksize*4,
                        width: blocksize*4,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
            
                Positioned(left: blocksize*6,top: blocksize*2,child: Icon(Icons.star,color: Colors.red,)) ,
                Positioned(left: blocksize*2,top: blocksize*7,child: Icon(Icons.star,color: Colors.green)) ,
                Positioned(left: blocksize*11,top: blocksize*6,child: Icon(Icons.star,color: Colors.blue)) ,
                Positioned(left: blocksize*8,top: blocksize*12,child: Icon(Icons.star,color: Color.fromARGB(255, 194, 181, 60),)) ,
            
                Positioned(left: blocksize*4,top: blocksize*20,child: ElevatedButton(onPressed: reset, child: Text("RESET",style: TextStyle(fontSize: 20,backgroundColor: Colors.red,color: Colors.white),))),

                Positioned(top: blocksize*18,left: blocksize*8,child: Text("$turn's turn",style: TextStyle(fontSize: 20),),),
                Positioned(left: blocksize*8,top: blocksize*16,child: Text("$rolled rolled $dice",style: TextStyle(fontSize: 20),)),
                Positioned(left: blocksize*1,top: blocksize*17,child: Text("$home ",style: TextStyle(fontSize: 20),)),
                

              //blue run
              for (int i = 0; i < path_blue.length; i++)
              if(i==1)
                Positioned(
                    left: path_blue[i].dx * blocksize,
                    top: path_blue[i].dy * blocksize,
                    child: Container(
                      width: blocksize,
                      height: blocksize,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.blue
                      ),
                      child: Icon(Icons.star) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_blue[i].dx * blocksize,
                top: path_blue[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.blue
                  ),
                ),
              )
              else
              Positioned(
                left: path_blue[i].dx * blocksize,
                top: path_blue[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
   
                //red run
              for (int i = 0; i < path_red.length; i++)
              if(i==1)
                Positioned(
                    left: path_red[i].dx * blocksize,
                    top: path_red[i].dy * blocksize,
                    child: Container(
                      width: blocksize,
                      height: blocksize,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.red
                      ),
                      child:Icon(Icons.star) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_red[i].dx * blocksize,
                top: path_red[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.red
                  ),
                ),
              )
              else
              Positioned(
                left: path_red[i].dx * blocksize,
                top: path_red[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              
            
                 //green run 
              for (int i = 0; i < path_green.length; i++)
              if(i==1)
                Positioned(
                    left: path_green[i].dx * blocksize,
                    top: path_green[i].dy * blocksize,
                    child: Container(
                      width: blocksize,
                      height: blocksize,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.green
                      ),
                      child: Icon(Icons.star) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_green[i].dx * blocksize,
                top: path_green[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.green
                  ),
                ),
              )
              else
              Positioned(
                left: path_green[i].dx * blocksize,
                top: path_green[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              
            
                 //yellow run
              for (int i = 0; i < path_red.length; i++)
              if(i==1)
                Positioned(
                    left: path_yellow[i].dx * blocksize,
                    top: path_yellow[i].dy * blocksize,
                    child: Container(
                      width: blocksize,
                      height: blocksize,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.yellow
                      ),
                      child: Icon(Icons.star) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_yellow[i].dx * blocksize,
                top: path_yellow[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.yellow
                  ),
                ),
              )
              else
              Positioned(
                left: path_yellow[i].dx * blocksize,
                top: path_yellow[i].dy * blocksize,
                child: Container(
                  width: blocksize,
                  height: blocksize,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              
              Positioned(left: blocksize*6,top: blocksize*6,child: CustomPaint(size: Size(blocksize*3, blocksize*3),painter: DiagonalPartitionPainter(),),),

//blue
                AnimatedPositioned(
                left: path_blue[blue_1_position].dx*blocksize,
                top: path_blue[blue_1_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)
                    ),
                  child: TextButton(onPressed: _blue_1, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_blue[blue_2_position].dx*blocksize,
                top: path_blue[blue_2_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)
                    ),
                  child: TextButton(onPressed: _blue_2, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_blue[blue_3_position].dx*blocksize,
                top: path_blue[blue_3_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)
                    ),
                  child: TextButton(onPressed: _blue_3, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_blue[blue_4_position].dx*blocksize,
                top: path_blue[blue_4_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)
                    ),
                  child: TextButton(onPressed: _blue_4, child: Text("")),
                ),
                ),

//red
                AnimatedPositioned(
                left: path_red[red_1_position].dx*blocksize,
                top: path_red[red_1_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _red_1, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_red[red_2_position].dx*blocksize,
                top: path_red[red_2_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _red_2, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_red[red_3_position].dx*blocksize,
                top: path_red[red_3_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _red_3, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_red[red_4_position].dx*blocksize,
                top: path_red[red_4_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _red_4, child: Text("")),
                ),
                ),

//green
                AnimatedPositioned(
                left: path_green[green_1_position].dx*blocksize,
                top: path_green[green_1_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _green_1, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_green[green_2_position].dx*blocksize,
                top: path_green[green_2_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _green_2, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_green[green_3_position].dx*blocksize,
                top: path_green[green_3_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _green_3, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_green[green_4_position].dx*blocksize,
                top: path_green[green_4_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _green_4, child: Text("")),
                ),
                ),

//yellow
                AnimatedPositioned(
                left: path_yellow[yellow_1_position].dx*blocksize,
                top: path_yellow[yellow_1_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _yellow_1, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_yellow[yellow_2_position].dx*blocksize,
                top: path_yellow[yellow_2_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _yellow_2, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_yellow[yellow_3_position].dx*blocksize,
                top: path_yellow[yellow_3_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _yellow_3, child: Text("")),
                ),
                ),
                AnimatedPositioned(
                left: path_yellow[yellow_4_position].dx*blocksize,
                top: path_yellow[yellow_4_position].dy*blocksize, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: blocksize/1.25,
                  height: blocksize/1.25,
                  decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                  child: TextButton(onPressed: _yellow_4, child: Text("")),
                ),
                ),
            
           Positioned(
              left: blocksize*1,
              top: blocksize*16,
              child: Container(
                height: blocksize*3,
                width: blocksize*3,
                child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animation.value,
                  child: IconButton(onPressed: roll_dice, icon:Image.asset("assets/images/$dice.jpg")),
                );
              },
            ),)
              ),


            ],
            ),
          ),

      ),
    );
  }
}

class DiagonalPartitionPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()..color = Colors.red;
    Paint paint2 = Paint()..color = Colors.blue;
    Paint paint3 = Paint()..color = Colors.yellow;
    Paint paint4 = Paint()..color = Colors.green;

    Paint borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(size.width / 2, size.height / 2);
    path1.lineTo(0, size.height);
    path1.close();

    Path path2 = Path();
    path2.moveTo(0, 0);
    path2.lineTo(size.width / 2, size.height / 2);
    path2.lineTo(size.width, 0);
    path2.close();

    Path path3 = Path();
    path3.moveTo(size.width, 0);
    path3.lineTo(size.width / 2, size.height / 2);
    path3.lineTo(size.width, size.height);
    path3.close();

    Path path4 = Path();
    path4.moveTo(0, size.height);
    path4.lineTo(size.width / 2, size.height / 2);
    path4.lineTo(size.width, size.height);
    path4.close();

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
    canvas.drawPath(path4, paint4);

    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), borderPaint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
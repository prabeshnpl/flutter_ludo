import 'package:flutter/material.dart';
import 'dart:math';

class twoplayer extends StatefulWidget {
  const twoplayer({super.key});

  @override
  State<twoplayer> createState() => _twoplayerState();
}

class _twoplayerState extends State<twoplayer> with SingleTickerProviderStateMixin {

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
  List<int> red_position= List<int>.generate(4, (index) => index+58);
  List<int> yellow_position= List<int>.generate(4, (index) => index+58);
  int dice=7,dice_index=0;
    
  int reset_position(int a)
  {
    if(a==0)
    {return 58;}
    else if(a==1)
    {return 59;}
    else if(a==2)
    {return 60;}
    else
    {return 61;}
}

  void red_animation(int a)
   {
  setState(() {
    if(turn=='red'&&dice_index==1)
    {
      if(red_position[a]==reset_position(a)&&dice==6)  {red_position[a]=1; }

      else if((red_position[a]==reset_position(a)&&dice!=6)||(red_position[a]+dice>57))  { return; }

      else{   
        red_position[a]+=dice; 
        
        if(red_position[a]!=1&&red_position[a]!=9&&red_position[a]!=14&&red_position[a]!=22&&red_position[a]!=27&&red_position[a]!=35&&red_position[a]!=40&&red_position[a]!=48)
      {
            for(int i=0;i<4;i++)
            {
              if((yellow_position[i]<25&&red_position[a]==yellow_position[i]+26)||(yellow_position[i]>27&&yellow_position[i]<52&&yellow_position[i]==red_position[a]+26))
              {
                yellow_position[i]=reset_position(i);
                dice_index=0;
                return;
              }
            }
          }
         }
    }
      rolled=turn;

      if(dice!=6) {  next_turn();  }

      dice_index=0;
  });
   }
  
  void yellow_animation(int a)
  {
    setState(() {
      if(turn=='yellow'&&dice_index==1){
          
      if(yellow_position[a]==reset_position(a)&&dice==6)
      {
        yellow_position[a]=1;
      }
      else if((yellow_position[a]==reset_position(a)&&dice!=6)||(yellow_position[a]+dice>57))
      {
        return;
      }
      else
      {
      yellow_position[a]+=dice;
            if(yellow_position[a]!=1&&yellow_position[a]!=9&&yellow_position[a]!=14&&yellow_position[a]!=22&&yellow_position[a]!=27&&yellow_position[a]!=35&&yellow_position[a]!=40&&yellow_position[a]!=48)
              {
                 for(int i=0;i<4;i++)
                 {
                 if((red_position[i]<25&&yellow_position[a]==red_position[i]+26)||(red_position[i]>27&&red_position[i]<52&&red_position[i]==yellow_position[a]+26))
              {
                red_position[i]=reset_position(i);
                dice_index=0;
                return;
              }
                 }
              }
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
    if((red_position[0]==57&&red_position[1]==57&&red_position[2]==57&&red_position[3]==57)||(yellow_position[0]==57&&yellow_position[1]==57&&yellow_position[2]==57&&yellow_position[3]==57))
    {turn='white';}
    else
    {
      if(turn=='red')
      {
          if(yellow_position[0]!=57||yellow_position[1]!=57||yellow_position[3]!=57||yellow_position[2]!=57)
            {
              turn ='yellow';
            }
          else{
                turn='red';
              }
            }

      else if(turn=='yellow')
        {
                if(red_position[0]!=57||red_position[1]!=57||red_position[2]!=57||red_position[3]!=57)
                {
                  turn='red';
                }
                else
                  {
                    turn='yellow';
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
      red_position[0]=yellow_position[0]=58;
      red_position[1]=yellow_position[1]=59;
      red_position[2]=yellow_position[2]=60;
      red_position[3]=yellow_position[3]=61;
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
       if(turn=='red'&&red_position[0]==58&&red_position[1]==59&&red_position[2]==60&&red_position[3]==61&&dice!=6)
      {
        next_turn();
      }
      else if(turn=='yellow'&&yellow_position[0]==58&&yellow_position[1]==59&&yellow_position[2]==60&&yellow_position[3]==61&&dice!=6)
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
        floatingActionButton:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,)) ,
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
       body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 117, 185, 240)),
         child: Padding(
              padding: const EdgeInsets.only(top:120),
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
              
                  
         
                //blue run
                for (int i = 0; i < path_blue.length; i++)
                if(i>=52)
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
                      color: Colors.white
                    ),
                  ),
                ),
            
                  //red run
                for (int i = 0; i < path_red.length; i++)
                if(i>=52)
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
                      color: Colors.white
                    ),
                  ),
                ),
                
              
                   //green run 
                for (int i = 0; i < path_green.length; i++)
                if(i>=52)
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
                      color: Colors.white
                    ),
                  ),
                ),
                
              
                   //yellow run
                for (int i = 0; i < path_red.length; i++)
                if(i>=52)
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
                      color: Colors.white
                    ),
                  ),
                ),
                

                Positioned(left: blocksize*6,top: blocksize*2,child: Icon(Icons.star,color: Colors.red,)) ,
                Positioned(left: blocksize*2,top: blocksize*8,child: Icon(Icons.star,color: Colors.green)) ,
                Positioned(left: blocksize*12,top: blocksize*6,child: Icon(Icons.star,color: Colors.blue)) ,
                Positioned(left: blocksize*8,top: blocksize*12,child: Icon(Icons.star,color: Color.fromARGB(255, 194, 181, 60),)) ,
            
                Positioned(left: blocksize*4,top: blocksize*20,child: ElevatedButton(onPressed: reset, child: Text("RESET",style: TextStyle(fontSize: 20,backgroundColor: Colors.red,color: Colors.white),))),
        
                Positioned(top: blocksize*18,left: blocksize*8,child: Text("$turn's turn",style: TextStyle(fontSize: 20),),),
                Positioned(left: blocksize*8,top: blocksize*16,child: Text("$rolled rolled $dice",style: TextStyle(fontSize: 20),)),
                Positioned(left: blocksize*1,top: blocksize*17,child: Text("$home ",style: TextStyle(fontSize: 20),)),
                
                Positioned(left: blocksize*6,top: blocksize*6,child: CustomPaint(size: Size(blocksize*3, blocksize*3),painter: DiagonalPartitionPainter(),),),

                Positioned(
                      left: path_blue[1].dx * blocksize,
                      top: path_blue[1].dy * blocksize,
                      child: Container(
                        width: blocksize,
                        height: blocksize,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.blue
                        ),
                        child: Icon(Icons.star) ,
                      ),
                    ),
                Positioned(
                      left: path_red[1].dx * blocksize,
                      top: path_red[1].dy * blocksize,
                      child: Container(
                        width: blocksize,
                        height: blocksize,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.red
                        ),
                        child:Icon(Icons.star) ,
                      ),
                    ),
                Positioned(
                      left: path_green[1].dx * blocksize,
                      top: path_green[1].dy * blocksize,
                      child: Container(
                        width: blocksize,
                        height: blocksize,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.green
                        ),
                        child: Icon(Icons.star) ,
                      ),
                    ),
                Positioned(
                      left: path_yellow[1].dx * blocksize,
                      top: path_yellow[1].dy * blocksize,
                      child: Container(
                        width: blocksize,
                        height: blocksize,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.yellow
                        ),
                        child: Icon(Icons.star) ,
                      ),
                    ),

         //red
                  for(int i=0;i<4;i++)
                     AnimatedPositioned(
                        left: path_red[red_position[i]].dx*blocksize,
                        top: path_red[red_position[i]].dy*blocksize, 
                        duration:Duration(milliseconds: 500),
                        child: Container(
                          width: blocksize/1.25,
                          height: blocksize/1.25,
                          decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                          child: Container(height: blocksize/1.5,width: blocksize/1.5,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                          child:Container(height: blocksize/3,width: blocksize/3,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 1.5)),
                          child:TextButton(onPressed: (){red_animation(i);}, child: Text(""))),),
                        ),
                        ),

         //yellow
                  for(int i=0;i<4;i++)
                  AnimatedPositioned(
                  left: path_yellow[yellow_position[i]].dx*blocksize,
                  top: path_yellow[yellow_position[i]].dy*blocksize, 
                  duration:Duration(milliseconds: 500),
                  child: Container(
                    width: blocksize/1.25,
                    height: blocksize/1.25,
                    decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                    child: Container(height: blocksize/1.5,width: blocksize/1.5,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                    child:Container(height: blocksize/2,width: blocksize/1.5,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 1.5)),
                    child:TextButton(onPressed: (){yellow_animation(i);},child: Text(""))),),
                  ),
                  ),
                 
             Positioned(
                left: blocksize*1,
                top: blocksize*15,
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
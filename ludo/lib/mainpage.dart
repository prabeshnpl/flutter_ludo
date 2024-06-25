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

class _mainpageState extends State<mainpage> {
  var random=Random();
  var turn='RED';
  var home='',rolled='Nobody';
  int red_position=58,blue_position=58,green_position=58,yellow_position=58;
  int dice=7;
  void roll_dice()
  {
    setState(() {

      dice=random.nextInt(6)+1;
      


      if(turn=='RED'){
      if(red_position==58&&dice==6)
      {
        red_position=1;
      }
      else
      {
      red_position+=dice;
      }
      if(red_position>57)
      {
        red_position-=dice;
      }
      else if(red_position==57)
      {
        home="RED WINS";
      }
      rolled=turn;
      if(dice!=6)
      {
         turn='BLUE';
      }
      }




      else if(turn=='BLUE')
      {
      if(blue_position==58&&dice==6)
      {
        blue_position=1;
      }
      else
      {
      blue_position+=dice;
      }
      if(blue_position>57)
      {
        blue_position-=dice;
      }
      else if(blue_position==57)
      {
        home="BLUE WINS";
      }
      rolled=turn;
      if(dice!=6)
      {
         turn='YELLOW';
      }
      }



      else if(turn=='YELLOW')
      {
      if(yellow_position==57)
      {
        return;
      }
      else{
        if(yellow_position==58&&dice==6)
      {
        yellow_position=1;
      }
      else
      {
      yellow_position+=dice;
      }
      if(yellow_position>57)
      {
        yellow_position-=dice;
      }
      else if(yellow_position==57)
      {
        home="YELLOW WINS";
      }
      rolled=turn;
      if(dice!=6)
      {
         turn='GREEN';
      }
      }
      }




      else if(turn=='GREEN')
      {
      if(green_position==57)
      {
        return;
      }
      else{
        if(green_position==58&&dice==6)
      {
        green_position=1;
      }
      else
      {
      green_position+=dice;
      }
      if(green_position>57)
      {
        green_position-=dice;
      }
      else if(green_position==57)
      {
        home="GREEN WINS";
      }
      rolled=turn;
      if(dice!=6)
      {
         turn='RED';
      }
      }
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
    return MaterialApp(
      title: "test",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Container(height:80,width: 80,child: ElevatedButton(onPressed: roll_dice, child: Image.asset("images/$dice.jpg"))),
          body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Stack(
              children: [
                //home text
                     Positioned(
                 top: 300,
                 left: 800,
                  child: Text(home)),
              //blue box
                Positioned(
                  left: 360,
                  top: 0,
                  child:Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
              //red box
                Positioned(
                  left: 0,
                  top: 0,
                  child:Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
               //green box
                Positioned(
                  left: 0,
                  top: 360,
                  child:Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
                //yellow box
                Positioned(
                  left: 360,
                  top: 360,
                  child:Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  )
                   ),
            
                Positioned(left: 245,top: 85,child: Icon(Icons.star,color: Colors.red,)) ,
                Positioned(left: 85,top: 325,child: Icon(Icons.star,color: Colors.green)) ,
                Positioned(left: 485,top: 245,child: Icon(Icons.star,color: Colors.blue)) ,
                Positioned(left: 325,top: 485,child: Icon(Icons.star,color: Colors.yellow,)) ,
                

              //blue run
              for (int i = 0; i < path_blue.length; i++)
              if(i==1)
                Positioned(
                    left: path_blue[i].dx * 40,
                    top: path_blue[i].dy * 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.blue
                      ),
                      child: Positioned(left: 40,top: 240,child: Icon(Icons.star)) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_blue[i].dx * 40,
                top: path_blue[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.blue
                  ),
                ),
              )
              else
              Positioned(
                left: path_blue[i].dx * 40,
                top: path_blue[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),

              AnimatedPositioned(
                left: path_blue[blue_position].dx*40,
                top: path_blue[blue_position].dy*40, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)
                    ),
                ),
                ),
            
            
                //red run
              for (int i = 0; i < path_red.length; i++)
              if(i==1)
                Positioned(
                    left: path_red[i].dx * 40,
                    top: path_red[i].dy * 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.red
                      ),
                      child: Positioned(left: 40,top: 240,child: Icon(Icons.star)) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_red[i].dx * 40,
                top: path_red[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.red
                  ),
                ),
              )
              else
              Positioned(
                left: path_red[i].dx * 40,
                top: path_red[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              AnimatedPositioned(
                left: path_red[red_position].dx*40,
                top: path_red[red_position].dy*40, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                ),
                ),
            
                 //green run 
              for (int i = 0; i < path_green.length; i++)
              if(i==1)
                Positioned(
                    left: path_green[i].dx * 40,
                    top: path_green[i].dy * 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.green
                      ),
                      child: Positioned(left: 40,top: 240,child: Icon(Icons.star)) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_green[i].dx * 40,
                top: path_green[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.green
                  ),
                ),
              )
              else
              Positioned(
                left: path_green[i].dx * 40,
                top: path_green[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              AnimatedPositioned(
                left: path_green[green_position].dx*40,
                top: path_green[green_position].dy*40, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                ),
                ),
            
                 //yellow run
              for (int i = 0; i < path_red.length; i++)
              if(i==1)
                Positioned(
                    left: path_yellow[i].dx * 40,
                    top: path_yellow[i].dy * 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.yellow
                      ),
                      child: Positioned(left: 40,top: 240,child: Icon(Icons.star)) ,
                    ),
                  )
              else if(i>=52)
              Positioned(
                left: path_yellow[i].dx * 40,
                top: path_yellow[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.yellow
                  ),
                ),
              )
              else
              Positioned(
                left: path_yellow[i].dx * 40,
                top: path_yellow[i].dy * 40,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              AnimatedPositioned(
                left: path_yellow[yellow_position].dx*40,
                top: path_yellow[yellow_position].dy*40, 
                duration:Duration(milliseconds: 500),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 3)),
                ),
                ),

                Positioned(top: 400,left: 800,child: Text("$rolled rolled $dice\n\n$turn's TURN")),
                Positioned(left: 240,top: 240,child: CustomPaint(size: Size(120, 120),painter: DiagonalPartitionPainter(),),),
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
    Paint paint3 = Paint()..color = Colors.green;
    Paint paint4 = Paint()..color = Colors.yellow;

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

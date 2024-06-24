import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});
  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ludo"),
        centerTitle: true,
      ),
      body:
      Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 5)),
        height: screenSize.height,
        width:  screenSize.width,
        child: Column(
          children: [
//1st row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
//red
                    Container(
                      height: 240,
                      width: 240,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white),
                            height: 150,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for(int i=0;i<2;i++)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.circle,color: Colors.red,size:50,),
                                      Icon(Icons.circle,color: Colors.red,size:50,),
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
//red-blue
                    Container(                      
                     
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              for(int i=0;i<6;i++)
                              if(i!=2)
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                              )
                              else
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                child: Icon(Icons.star_rounded,color: Colors.red,),
                              )
                            ],
                          ), 
                          Column(
                            children: [
                                for(int i=0;i<6;i++)
                                 if(i!=0)
                                   Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(color: Colors.blue,border: Border.all(width: 1,color: Colors.black)),
                                  )
                                  else 
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                  )
                            ],
                          ), 
                          Column(
                            children: [
                              for(int i=0;i<6;i++)
                              if(i!=1)
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                              )
                              else
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(color:Colors.blue,border: Border.all(width: 1,color: Colors.black)),
                                 child: Icon(Icons.star_rounded,color: Colors.black,),
                              )
                            ],
                          ),
                        ],
                    ),
                    
                    ),
//blue
                   Container(
                      height: 240,
                      width: 240,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white),
                            height: 150,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for(int i=0;i<2;i++)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.circle,color: Colors.blue,size:50,),
                                      Icon(Icons.circle,color: Colors.blue,size:50,),
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

//homewala row

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
//left
                    Container(
                      
                      decoration: BoxDecoration(color: Colors.white),
                       child: Column(
                        children: [
                          Row(
                            children:[
                               for(int i=0;i<6;i++)
                               if(i!=1)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),color: Colors.red),
                                child: Icon(Icons.star_rounded,color: Colors.black,),
                                )
                            ],
                          ), 
                          Row(
                            children: [
                              for(int i=0;i<6;i++)
                                if(i==0)
                                  Container
                                  (
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                  )
                                else
                                 Container
                                  (
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),color: Colors.red),
                                  )
                              
                            ],
                          ),                        
                          Row(
                            children:[
                               for(int i=0;i<6;i++)
                               if(i!=2)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                child: Icon(Icons.star_rounded,color: Colors.green,),
                                )
                               
                            ],
                          )
                        ],
                      ),
                    ),
//homebutton
                    Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  child: CustomPaint(
                    size: Size(120, 120),
                    painter: DiagonalPartitionPainter(),
                  ),
                ),

//right
                    Container(
                      
                      decoration: BoxDecoration(color: Colors.white),
                       child: Column(
                        children: [
                          Row(
                            children:[
                               for(int i=0;i<6;i++)
                               if(i!=3)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                child:Icon(Icons.star_rounded,color: Colors.blue,)
                                )
                            ],
                          ), 
                          Row(
                            children: [
                              for(int i=0;i<6;i++)
                                if(i!=5)
                                  Container
                                  (
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),color: Colors.yellow),
                                  )
                                else
                                 Container
                                  (
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                  )
                              
                            ],
                          ), 
                          
                          Row(
                            children:[
                               for(int i=0;i<6;i++)
                               if(i!=4)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(color: Colors.yellow,border: Border.all(width: 1,color: Colors.black)),
                                child:Icon(Icons.star_rounded,color: Colors.black,)
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
//third row
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
//green
                     Container(
                      height: 240,
                      width: 240,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white),
                            height: 150,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for(int i=0;i<2;i++)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.circle,color: Colors.green,size:50,),
                                      Icon(Icons.circle,color: Colors.green,size:50,),
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
//green yellow
                    Container(                      
                     
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Column(
                            children: [
                             for(int i=0;i<6;i++)
                               if(i!=4)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(color: Colors.green,border: Border.all(width: 1,color: Colors.black)),
                                child:Icon(Icons.star_rounded,color: Colors.black,)
                                )
                            ],
                          ), 
                          Column(
                            children: [
                                for(int i=0;i<6;i++)
                                 if(i!=5)
                                   Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(color: Colors.green,border: Border.all(width: 1,color: Colors.black)),
                                  )
                                  else 
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                  )
                            ],
                          ), 
                          Column(
                            children: [
                              for(int i=0;i<6;i++)
                               if(i!=3)
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                )
                                else
                                Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                child:Icon(Icons.star_rounded,color: Colors.yellow,)
                                )
                            ],
                          ),
                        ],
                    ),
                    
                    ),
//yellow
                   Container(
                      height: 240,
                      width: 240,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white),
                            height: 150,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for(int i=0;i<2;i++)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.circle,color: Colors.yellow,size:50,),
                                      Icon(Icons.circle,color: Colors.yellow,size:50,),
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
          ],
        ),
      )
      ,
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

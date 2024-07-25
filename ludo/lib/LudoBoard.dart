import 'package:flutter/material.dart';

class Run extends StatelessWidget {
   Run({super.key});

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
                     Offset(10.5, 1.5),Offset(12.5, 1.5),Offset(12.5, 3.5),Offset(10.5, 3.5)
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
                     Offset(1.5, 1.5),Offset(3.5, 1.5),Offset(3.5, 3.5),Offset(1.5, 3.5),
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
                     Offset(1.5, 10.5),Offset(3.5, 10.5),Offset(3.5, 12.5),Offset(1.5, 12.5),
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
                     Offset(10.5, 10.5),Offset(12.5, 10.5),Offset(12.5, 12.5),Offset(10.5, 12.5),
  ];
  

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var blocksize= screensize.width/15;
    return Stack(
      children: [
         //bluebox
         Positioned(
                       left: blocksize*9,
                       top: blocksize*0,
                       child:Container(
                         height: blocksize*6,
                         width: blocksize*6,
                         decoration: BoxDecoration(color:Colors.blue),
                         child: Center(
                           child: Container(
                             height: blocksize*4,
                             width: blocksize*4,
                             decoration: BoxDecoration(color: Colors.white),
                           ),
                         ),
                       )
                        ),
                        //green
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
                        //yellow
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
                           )
                           )
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
      ],
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
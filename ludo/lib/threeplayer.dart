import 'package:flutter/material.dart';
import 'package:ludo/pawn.dart';
import 'dart:math';
import 'package:ludo/LudoBoard.dart';

class threeplayer extends StatefulWidget {
  final Screensize;
  threeplayer({super.key,this.Screensize});
  @override
  State<threeplayer> createState() => _fourplayerState();
}

class _fourplayerState extends State<threeplayer> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  final int numberOfRotations = 1; // Set the number of rotations
  late var _width;
  late var blocksize;
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
    ).chain(CurveTween(curve: Curves.easeOut)).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
      }
    });
    _width=widget.Screensize;
    blocksize=_width/15;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var random=Random();
  var turn='red';
  List<int> red_position= List<int>.generate(4, (index) => index+58);
  List<int> blue_position= List<int>.generate(4, (index) => index+58);
  List<int> yellow_position= List<int>.generate(4, (index) => index+58);

   List<double> redblockleft=List<double>.filled(4,1);
    List<double> redblocktop=List<double>.filled(4, 0);
    List<double> yellowblockleft=List<double>.filled(4, 1);
    List<double> yellowblocktop=List<double>.filled(4, 0);
   List<double> blueblockleft=List<double>.filled(4,1);
    List<double> blueblocktop=List<double>.filled(4, 0);

  int dice_index=0,dice=7,six_counter=0;

  void checkcollapse(var a,int b)
  {
    if(a=='red')
    {
      redblockleft[b]-=6;
      for(int i=0;i<4;i++)
      {
      if((red_position[b]==9&&blue_position[i]==48)||(red_position[b]==14&&blue_position[i]==1)||(red_position[b]==22&&blue_position[i]==9)||(red_position[b]==27&&blue_position[i]==14)||(red_position[b]==35&&blue_position[i]==22)||(red_position[b]==40&&blue_position[i]==27)||(red_position[b]==48&&blue_position[i]==35)||(red_position[b]==1&&blue_position[i]==40))
      {
        redblockleft[b]=redblockleft[b] + 6;
      }
      if((red_position[b]==9&&yellow_position[i]==35)||(red_position[b]==14&&yellow_position[i]==40)||(red_position[b]==22&&yellow_position[i]==48)||(red_position[b]==27&&yellow_position[i]==1)||(red_position[b]==35&&yellow_position[i]==9)||(red_position[b]==40&&yellow_position[i]==14)||(red_position[b]==48&&yellow_position[i]==22)||(red_position[b]==1&&yellow_position[i]==27))
      {
        redblockleft[b]=redblockleft[b] + 6;
      }
      
      if(red_position[b]==red_position[i]&&b!=i)
       {
       redblockleft[b]=redblockleft[b] + 6;
      }
      }
    }

    else if(a=='blue')
    {
      blueblockleft[b]-=6;
      for(int i=0;i<4;i++)
      {
        if((blue_position[b]==9&&yellow_position[i]==48)||(blue_position[b]==14&&yellow_position[i]==1)||(blue_position[b]==22&&yellow_position[i]==9)||(blue_position[b]==27&&yellow_position[i]==14)||(blue_position[b]==35&&yellow_position[i]==22)||(blue_position[b]==40&&yellow_position[i]==27)||(blue_position[b]==48&&yellow_position[i]==35)||(blue_position[b]==1&&yellow_position[i]==40))
      {
        blueblockleft[b]=blueblockleft[b] + 6;
      }
      if((blue_position[b]==9&&red_position[i]==22)||(blue_position[b]==14&&red_position[i]==27)||(blue_position[b]==22&&red_position[i]==35)||(blue_position[b]==27&&red_position[i]==40)||(blue_position[b]==35&&red_position[i]==48)||(blue_position[b]==40&&red_position[i]==1)||(blue_position[b]==48&&red_position[i]==9)||(blue_position[b]==1&&red_position[i]==14))
      {
        blueblockleft[b]=blueblockleft[b] + 6;
      }
      if(blue_position[b]==blue_position[i]&&b!=i)
       {
        blueblockleft[b]=blueblockleft[b] + 6;
      }
      }
      }

    else if(a=='yellow')
    {
      yellowblockleft[b]-=6;
      for(int i=0;i<4;i++)
      {
        if((yellow_position[b]==9&&red_position[i]==35)||(yellow_position[b]==14&&red_position[i]==40)||(yellow_position[b]==22&&red_position[i]==48)||(yellow_position[b]==27&&red_position[i]==1)||(yellow_position[b]==35&&red_position[i]==9)||(yellow_position[b]==40&&red_position[i]==14)||(yellow_position[b]==48&&red_position[i]==22)||(yellow_position[b]==1&&red_position[i]==27))
      {
        yellowblockleft[b]=yellowblockleft[b] + 6;
      }
      if((yellow_position[b]==9&&blue_position[i]==22)||(yellow_position[b]==14&&blue_position[i]==27)||(yellow_position[b]==22&&blue_position[i]==35)||(yellow_position[b]==27&&blue_position[i]==40)||(yellow_position[b]==35&&blue_position[i]==48)||(yellow_position[b]==40&&blue_position[i]==1)||(yellow_position[b]==48&&blue_position[i]==9)||(yellow_position[b]==1&&blue_position[i]==14))
      {
        yellowblockleft[b]=yellowblockleft[b] + 6;
        }
      if(yellow_position[b]==yellow_position[i]&&b!=i)
       {
        yellowblockleft[b]=yellowblockleft[b] + 6;
      }
      }
    }
  }
  
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
      if(red_position[a]==reset_position(a)&&dice==6)  {red_position[a]=1; checkcollapse('red', a); }

      else if((red_position[a]==reset_position(a)&&dice!=6)||(red_position[a]+dice>57))  { return; }

      else{   
        red_position[a]+=dice; 
        if(red_position[a]==57)
        {
          for(int i=0;i<4;i++)
      {
      if(red_position[a]==red_position[i]&&a!=i)
       {
         redblockleft[a]=redblockleft[a] + 6;
      }
      }
          return;
        }
       else if(red_position[a]!=1&&red_position[a]!=9&&red_position[a]!=14&&red_position[a]!=22&&red_position[a]!=27&&red_position[a]!=35&&red_position[a]!=40&&red_position[a]!=48)
      {
        redblockleft[a]=1;
        int cc=0;
            for(int i=0;i<4;i++)
            {
              if((blue_position[i]<39&&(blue_position[i]+13==red_position[a]))||(blue_position[i]>40&&blue_position[i]<52&&blue_position[i]==(red_position[a]+39)))
              {
                 blue_position[i]=reset_position(i);
                 cc++;
              }
              if((yellow_position[i]<25&&red_position[a]==yellow_position[i]+26)||(yellow_position[i]>27&&yellow_position[i]<52&&yellow_position[i]==red_position[a]+26))
              {
                 yellow_position[i]=reset_position(i);
                 cc++;
              }
              if(red_position[a]==red_position[i]&&a!=i)
              {
                redblockleft[a]=redblockleft[a] + 6;
              }
            }
            if(cc!=0)
              {
                dice_index=0;
                return;
              }
          }
          else
          {
            checkcollapse('red',a);
          }
         }
      
      if(dice!=6&&red_position[a]!=57) {  next_turn(); print(dice);  }

      dice_index=0;
  });
}

  void blue_animation(int a)
  {
    setState(() {

      if(blue_position[a]==reset_position(a)&&dice==6)
      {
        blue_position[a]=1;
        checkcollapse('blue', a);
      }
      
      else if(blue_position[a]==reset_position(a)&&dice!=6||(blue_position[a]+dice>57))
      {
        return;
      }
      else
      {
      blue_position[a]+=dice;
      if(blue_position[a]>57)
      {
        blue_position[a]-=dice;
        return;}
      else if(blue_position[a]==57)
      {
         for(int i=0;i<4;i++)
      {
      if(blue_position[a]==blue_position[i]&&a!=i)
       {
         blueblockleft[a]=blueblockleft[a] + 6;
      }
      }
      }
      else if(blue_position[a]!=1&&blue_position[a]!=9&&blue_position[a]!=14&&blue_position[a]!=22&&blue_position[a]!=27&&blue_position[a]!=35&&blue_position[a]!=40&&blue_position[a]!=48)
      {
        blueblockleft[a]=1;
        int cc=0;
        for(int i=0;i<4;i++)
        {
          if((yellow_position[i]<39&&(yellow_position[i]+13==blue_position[a]))||(yellow_position[i]>40&&yellow_position[i]<52&&yellow_position[i]==(blue_position[a]+39)))
              {
                yellow_position[i]=reset_position(i);
                cc++;
              }
          if((red_position[i]>14&&red_position[i]<52&&red_position[i]==blue_position[a]+13)||(red_position[i]<13&&blue_position[a]==red_position[i]+39))
              {
                red_position[i]=reset_position(i);
                cc++;
              }
          if(blue_position[a]==blue_position[i]&&a!=i)
                  {
                    blueblockleft[a]=blueblockleft[a] + 6;
                  }
        }
        if(cc!=0)
              {
                dice_index=0;
                return;
              }
        }
        else
          {
            checkcollapse('blue',a);
          }
      }
      if(dice!=6&&blue_position[a]!=57)
      {
          next_turn();
          print(dice);
      }
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
        checkcollapse('yellow', a);
      }
      else if((yellow_position[a]==reset_position(a)&&dice!=6)||(yellow_position[a]+dice>57))
      {
        return;
      }
      else
      {
      yellow_position[a]+=dice;
      if(yellow_position[a]==57)
      {
      for(int i=0;i<4;i++)
      {
      if(yellow_position[a]==yellow_position[i]&&a!=i)
       {
         yellowblockleft[a]=yellowblockleft[a] + 6;
      }
      }
      }
            else if(yellow_position[a]!=1&&yellow_position[a]!=9&&yellow_position[a]!=14&&yellow_position[a]!=22&&yellow_position[a]!=27&&yellow_position[a]!=35&&yellow_position[a]!=40&&yellow_position[a]!=48)
              {
                yellowblockleft[a]=1;
                 int cc=0;
                 for(int i=0;i<4;i++)
                 {
                  
                 if((red_position[i]<25&&yellow_position[a]==red_position[i]+26)||(red_position[i]>27&&red_position[i]<52&&red_position[i]==yellow_position[a]+26))
              {
                red_position[i]=reset_position(i);
              }
                 if((blue_position[i]>14&&blue_position[i]<52&&blue_position[i]==yellow_position[a]+13)||(blue_position[i]<13&&yellow_position[a]==blue_position[i]+39))
              {
                blue_position[i]=reset_position(i);
              }
              if(yellow_position[a]==yellow_position[i]&&a!=i)
                {
                  yellowblockleft[a]=yellowblockleft[a] + 6;
                }
              }
              if(cc!=0)
              {
                dice_index=0;
                return;
              }
              }
              else
          {
            checkcollapse('yellow',a);
          }
      }
      if(dice!=6&&yellow_position[a]!=57)
      {
          next_turn();
          print(dice);
      }
      dice_index=0;
      
      }
    });
  }

  
  void next_turn()
  {
    six_counter=0;
    if(((blue_position[0]==57&&blue_position[1]==57&&blue_position[2]==57&&blue_position[3]==57))||(red_position[0]==57&&red_position[1]==57&&red_position[2]==57&&red_position[3]==57)||(yellow_position[0]==57&&yellow_position[1]==57&&yellow_position[2]==57&&yellow_position[3]==57))
    {turn='white';}
    else
    {
      if(turn=='red')
      {
        turn='blue';
          if(blue_position[0]==57&&blue_position[1]==57&&blue_position[2]==57&&blue_position[3]==57)
          {
            next_turn();
          }
      }


        else if(turn=='blue')
        {
          turn='yellow';
           if(yellow_position[0]==57&&yellow_position[1]==57&&yellow_position[2]==57&&yellow_position[3]==57)
          {
            next_turn();
          }
        }


        else if(turn=='yellow')
        {
          turn='red';
           if(red_position[0]==57&&red_position[1]==57&&red_position[2]==57&&red_position[3]==57)
          {
            next_turn();
          }
        }

    }
  }

  void reset()
  {
    setState(() {
      red_position[0]=blue_position[0]=yellow_position[0]=58;
      red_position[1]=blue_position[1]=yellow_position[1]=59;
      red_position[2]=blue_position[2]=yellow_position[2]=60;
      red_position[3]=blue_position[3]=yellow_position[3]=61;
      dice=7;
      turn='red';
      dice_index=0;
    });
  }
  
  void roll_dice()
  {
    setState(() {
      if(dice_index==0)
      {
        dice=random.nextInt(6)+1;

        if(dice==6)
        {six_counter++;}
         _controller.forward();
       if(six_counter==3)
       {
         next_turn();
         dice_index=0;
       }
      else if(turn=='blue'&&blue_position[0]==58&&blue_position[1]==59&&blue_position[2]==60&&blue_position[3]==61&&dice!=6)
      {
        next_turn();
      }
      else if(turn=='red'&&red_position[0]==58&&red_position[1]==59&&red_position[2]==60&&red_position[3]==61&&dice!=6)
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
    return MaterialApp(
      title: "test",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,)) ,
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Row(
            children: [
              SizedBox(width: blocksize,),
              if(turn=='red')
             Container(
                     height: blocksize*3,
                     width: blocksize*3,
                     child: 
                    AnimatedBuilder(
                   animation: _animation,
                   builder: (context, child) {
                     return Transform.rotate(
                       angle: _animation.value,
                       child: InkWell(onTap: dice_index==0?roll_dice:null,child: Image.asset("assets/images/$dice.jpg"),),
                     );
                   },
                 ),)
                 else SizedBox(width: blocksize*3,height: blocksize*3,),
                  
              SizedBox(width: _width-blocksize*8,height: blocksize*3,),
              if(turn=='blue')
             Container(
                     height: blocksize*3,
                     width: blocksize*3,
                     child: AnimatedBuilder(
                   animation: _animation,
                   builder: (context, child) {
                     return Transform.rotate(
                       angle: _animation.value,
                       child: InkWell(onTap: dice_index==0?roll_dice:null,child: Image.asset("assets/images/$dice.jpg"),),
                     );
                   },
                 ),),
                 ],
          ),
          SizedBox(height: blocksize/2,),
           Row(
             children: [
               Container(
                height: _width,
                width: _width,
                decoration: BoxDecoration(color: Color.fromARGB(255, 117, 185, 240)),
                 child: Stack(
                   children: [
                    Run(),
                              //red
                     for(int i=0;i<4;i++)
                        AnimatedPositioned(
                           left: path_red[red_position[i]].dx*blocksize+redblockleft[i],
                           top: path_red[red_position[i]].dy*blocksize+redblocktop[i], 
                           duration:Duration(milliseconds: 500),
                           child:InkWell(
                                          onTap: turn=='red'&&dice_index==1 ? (){red_animation(i);} : null,
                                          child:LudoPawn(size: blocksize, color: Colors.red)
                                          )
                                          ),
                            
                     
                               //blue
                     for(int i=0;i<4;i++)
                         AnimatedPositioned(
                           left: path_blue[blue_position[i]].dx*blocksize+blueblockleft[i],
                           top: path_blue[blue_position[i]].dy*blocksize+blueblocktop[i], 
                           duration:Duration(milliseconds: 500),
                            child:InkWell(
                                    onTap: turn=='blue'&&dice_index==1 ? (){blue_animation(i);} : null,
                                    child:LudoPawn(size: blocksize, color: Colors.blue)
                                    )),
                              //yellow
                     for(int i=0;i<4;i++)
                     AnimatedPositioned(
                     left: path_yellow[yellow_position[i]].dx*blocksize+yellowblockleft[i],
                     top: path_yellow[yellow_position[i]].dy*blocksize+yellowblocktop[i], 
                     duration:Duration(milliseconds: 500),
                     child:InkWell(
                                    onTap: turn=='yellow'&&dice_index==1 ? (){yellow_animation(i);} : null,
                                    child:LudoPawn(size: blocksize, color: Colors.yellow)
                     )
                     )

                                    ],
                 ),
               ),
             ],
           ),
         SizedBox(height: blocksize/2,),
         Row(
            children: [
              SizedBox(width: blocksize,),
              if(turn=='green')
             Container(
                     height: blocksize*3,
                     width: blocksize*3,
                     child: AnimatedBuilder(
                   animation: _animation,
                   builder: (context, child) {
                     return Transform.rotate(
                       angle: _animation.value,
                       child: InkWell(onTap: dice_index==0?roll_dice:null,child: Image.asset("assets/images/$dice.jpg"),),
                     );
                   },
                 ),)
                 else   SizedBox(width: blocksize*3,height: blocksize*3,),
              SizedBox(width: _width-blocksize*7,),
              if(turn=='yellow')
             Container(
                     height: blocksize*3,
                     width: blocksize*3,
                     child: AnimatedBuilder(
                   animation: _animation,
                   builder: (context, child) {
                     return Transform.rotate(
                       angle: _animation.value,
                       child: InkWell(onTap: dice_index==0?roll_dice:null,child: Image.asset("assets/images/$dice.jpg"),),
                     );
                   },
                 ),),
                 ],
          ),
         
         ],
       ),

      ),
    );
  }
}

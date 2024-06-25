import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LudoGame(),
    );
  }
}

class LudoGame extends StatefulWidget {
  @override
  _LudoGameState createState() => _LudoGameState();
}

class _LudoGameState extends State<LudoGame> {
  final List<Offset> path = [
    Offset(0, 0), Offset(1, 0), Offset(2, 0), Offset(3, 0),
    Offset(3, 1), Offset(3, 2), Offset(3, 3), Offset(2, 3),
    Offset(1, 3), Offset(0, 3), Offset(0, 2), Offset(0, 1),
  ];
  int gotiPosition = 0;

  void moveGoti(int steps) {
    setState(() {
      gotiPosition = (gotiPosition + steps) % path.length;
    });
  }

  int rollDice() {
    final random = Random();
    return random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ludo Game')),
      body: Stack(
        children: [
          // Draw the path
          for (int i = 0; i < path.length; i++)
            Positioned(
              left: path[i].dx * 50,
              top: path[i].dy * 50,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
              ),
            ),
          // Draw the goti
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            left: path[gotiPosition].dx * 50,
            top: path[gotiPosition].dy * 50,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int diceRoll = rollDice();
          moveGoti(diceRoll);
        },
        child: Icon(Icons.casino),
      ),
    );
  }
}

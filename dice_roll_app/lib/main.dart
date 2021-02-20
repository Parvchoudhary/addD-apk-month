import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dice());
}
class Dice extends StatefulWidget {
   @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int nextimage=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[600],
          title: Center(child: Text('Dice Roller')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0.0,0,50.0),
              child: Center(
                child: Image.asset('assets/images/dice_$nextimage.png',
                width: 250.0,
                height: 250.0,
                ),
              ),
            ),
            RaisedButton(onPressed: () {
              setState(() {
                nextimage= Random().nextInt(6) +1;
                });
              
            },
            child: Text('ROLL'),)
          ],
        ),
      ),
    );
  }
}


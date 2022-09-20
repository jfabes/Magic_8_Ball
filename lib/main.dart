import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),

      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        foregroundColor: Colors.blueAccent.shade400,
        title: Text(
          'Ask me anything',
          style: GoogleFonts.abrilFatface(textStyle:
            TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(offset: Offset(0, -2), color: Colors.white)],
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.white,
          ),
          ),

        ),


      ),
      body: Ball(),
      backgroundColor: Colors.black45,
    ) ;
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){

          setState(() {
            ballNumber = Random().nextInt(5)+1;
          });

          print('I got clicked');
          print("The image you received is : $ballNumber");

        },
        child: Image.asset('images/ball$ballNumber.png'),

      ),

    );
  }
}


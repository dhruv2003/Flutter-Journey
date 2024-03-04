import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}


//flat button styling
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black87, minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);





class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Ask Me Anything',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0
          ),),
        ),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({super.key});




  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  var BallNumber=1;
  void random(){
    setState(() {
      BallNumber=Random().nextInt(4)+1;
    });
  }


  @override
  Widget build(BuildContext context) {




    return Center(
      child: TextButton(
          onPressed: () {
            random();
          },
          child: Image.asset('images/ball$BallNumber.png')
      ),
    );
  }
}



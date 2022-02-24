import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(child: Text('Magic 8 Ball')),
          backgroundColor: Colors.red,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage>{
  int magicball = 1;

  void changemagicball(){
    magicball = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext) {
    return Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              changemagicball();
            });
          },
          child: Image(
            image: AssetImage('images/ball$magicball.png'),
          ),
        )
    );
  }
}

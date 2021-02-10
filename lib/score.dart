import 'package:flutter/material.dart';

class Score extends StatefulWidget{
  ScoreState createState() => ScoreState();
}

class ScoreState extends State<Score>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScoreSheet'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
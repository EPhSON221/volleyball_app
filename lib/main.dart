import 'package:flutter/material.dart';
import 'home.dart';
import 'playerData.dart';
import 'addPlayer.dart';
import 'score.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'Home',
      routes: {
        'Home': (context) => Home(),
        'PlayerData': (context) => PlayerData(),
        'AddPlayer': (context) => AddPlayer(),
        'Score': (context) => Score(),
      },
    ),
  );
}

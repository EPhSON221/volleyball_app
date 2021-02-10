import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageButton('PlayerData','選手データ'),
            PageButton('Score','スコアシート'),
          ],
        ),
      ),
    );
  }
}

//遷移先のrouteとボタンに乗せる文字列を受け取ってElevatedButtonを作る
class PageButton extends StatelessWidget{

  final String page;
  final String title;

  PageButton(this.page,this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title),
      onPressed: (){
        Navigator.pushNamed(context, page);
      }
    );
  }
}
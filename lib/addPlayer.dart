import 'package:flutter/material.dart';
import 'listBuilder.dart';

class AddPlayer extends StatefulWidget{
  AddPlayerState createState() => AddPlayerState();
}

class AddPlayerState extends State<AddPlayer>{
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('選手登録'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: '選手氏名'
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(nameController.text.isNotEmpty){
                        playerList.add(nameController.text);
                      }
                      setState(() {});
                    },
                    child: Text('登録'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListBuilder(playerList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
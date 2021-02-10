import 'package:flutter/material.dart';

List<String> playerList=[];

class ListBuilder extends StatelessWidget{

  final List list;

  ListBuilder(this.list);

  @override
  Widget build(BuildContext context) {
    return listView();
  }

  Widget listTile(String name){
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize:20),
      ),
    );
  }

  Widget listView(){
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,i){
          return listTile(list[i]);
        }
    );
  }
}
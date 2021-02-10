import 'package:flutter/material.dart';
import 'addPlayer.dart';
import 'listBuilder.dart';

class PlayerData extends StatefulWidget{
  PlayerDataState createState() => new PlayerDataState();
}

class PlayerDataState extends State<PlayerData>{
  @override
  Widget build(BuildContext build){
    Widget playerListView = ListBuilder(playerList);
    return Scaffold(
      appBar: AppBar(
        title: Text('芝浦工大 選手データ'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: ()async{
              Widget result = await Navigator.of(context).push(
                MaterialPageRoute<Widget>(
                  builder: (context) => AddPlayer(),
                ),
              );
              setState(() => playerListView = result);
            }
          ),
        ],
      ),
      body: playerListView,
    );
  }
}
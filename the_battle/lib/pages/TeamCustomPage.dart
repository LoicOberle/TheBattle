import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/models/Player.dart';

class TeamCustomPage extends StatefulWidget {
  Player player;
  TeamCustomPage(Player p) {
    this.player = p;
  }
  @override
  _TeamCustomPageState createState() => _TeamCustomPageState(this.player);
}

class _TeamCustomPageState extends State<TeamCustomPage> {
  Player player;
  _TeamCustomPageState(Player p) {
    this.player = p;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("The Battle", style: TextStyle(color: Colors.white))),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //child: CharacterMaster(data.characters),
        child: Text("Custom team"),
      ),
    );
    //return new CharacterMaster(data.characters).widget;
  }
}

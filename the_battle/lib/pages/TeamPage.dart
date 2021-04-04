import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/data/characters.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/widgets/ChangePageWidget.dart';
import 'package:the_battle/widgets/CharacterTeamMaster.dart';

// ignore: must_be_immutable
class TeamPage extends StatefulWidget {
  Player player;
  TeamPage(Player p) {
    this.player = p;
  }
  @override
  _TeamPageState createState() => _TeamPageState(this.player);
}

class _TeamPageState extends State<TeamPage> {
  void onListEvent(Character c) {
    setState(() {
      if (!c.autoSelected) {
        this.player.team.removeCharacter(c);
      }
    });
  }

  Player player;
  _TeamPageState(Player p) {
    this.player = p;
  }
  validateTeam() {
    setState(() {
      this.player.team.validated = true;
      Navigator.pushReplacementNamed(context, "/team-custom");
    });
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Visibility(visible: selectedCharacter != null, child: this.details),
            Container(
              height: 100.0,
              child: Column(
                children: [
                  Text("Encore " +
                      (5 - this.player.team.characters.length).toString() +
                      " personnages à selectionner"),
                  Visibility(
                    visible: this.player.team.characters.length >= 5,
                    child: RaisedButton(
                      child: Text("Confirm Team"),
                      onPressed: validateTeam,
                    ),
                  )
                ],
              ),
            ),
            CharacterTeamMaster(this.player.team.characters, this.onListEvent),
            ChangePageWidget()
          ],
        ),
      ),
    );
    //return new CharacterMaster(data.characters).widget;
  }
}

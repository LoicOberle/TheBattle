import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/models/Player.dart';
import "../models/Character.dart";

// ignore: must_be_immutable
class CharacterDetails extends StatefulWidget {
  Character character;
  Player player;
  CharacterDetails(Player p, Character char) {
    this.character = char;
    this.player = p;
  }

  @override
  State<StatefulWidget> createState() {
    return CharacterDetailsState(this.player, this.character);
  }
}

class CharacterDetailsState extends State<CharacterDetails> {
  bool empty = true;
  Character character;
  Player player;
  CharacterDetailsState(Player p, Character char) {
    this.character = char;
    this.player = p;
  }

  void addCharacter() {
    setState(() {
      if (!character.selected) {
        if (this.player.team.addCharacter(this.character)) {
          Navigator.pushNamed(context, "/team");
          //c.selected = true;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Character added'),
              /*action: SnackBarAction(
                label: 'Action',
                onPressed: () {
                  // Code to execute.
                },
              ),*/
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return AlertDialog(
                title: new Text("Error"),
                content: new Text(
                    "There are already 5 characters in your team. You can remove a character from your team to add another."),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new FlatButton(
                    child: new Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177.0,
      child: Container(
        color: Colors.red[100],
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    character.name,
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage(character.imagePath()),
                    width: 75,
                    height: 75,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Strength: " + this.character.strength.value.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                  ),
                  Text("Speed: " + this.character.speed.value.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 20.0)),
                  Text(
                      "Cleverness: " +
                          this.character.cleverness.value.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 20.0)),
                  Text(
                      "Intelligence: " +
                          this.character.intelligence.value.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 20.0))
                ],
              )
            ],
          ),
          RaisedButton(
            onPressed: addCharacter,
            child: Text("Add to team"),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/widgets/ChangePageWidget.dart';
import '../widgets/CharacterMaster.dart';
import '../widgets/CharacterDetails.dart';
import "../data/characters.dart";
import "../models/Character.dart";

class AllCharactersPage extends StatefulWidget {
  Player player;
  AllCharactersPage(Player p) {
    this.player = p;
  }
  @override
  _AllCharactersPageState createState() => _AllCharactersPageState(this.player);
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  //List<Character> characters;
  Player player;
  Character selectedCharacter;
  List<Widget> enfants;
  CharacterDetails details;
  _AllCharactersPageState(p) {
    this.player = p;
    this.details = new CharacterDetails(selectedCharacter);
  }
  @override
  void onListEvent(Character c) {
    setState(() {
      this.selectedCharacter = c;
      if (c.selected) {
        if (!c.autoSelected) {
          if (this.player.team.removeCharacter(c)) {
            //c.selected = false;
          }
        }
      } else {
        if (this.player.team.addCharacter(c)) {
          //c.selected = true;
        }
      }
      this.details = new CharacterDetails(selectedCharacter);
      // print(this.selectedCharacter.name);
      //this.details.createState();
    });

    //rint(c.cleverness.value.toString());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("The Battle", style: TextStyle(color: Colors.red))),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //child: CharacterMaster(data.characters),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(visible: selectedCharacter != null, child: this.details),
            CharacterMaster(CharactersData.characters, this.onListEvent),
            ChangePageWidget()
          ],
        ),
      ),
    );
    //return new CharacterMaster(data.characters).widget;
  }

  changePage(String s) {}
}

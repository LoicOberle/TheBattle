import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/CharacterMaster.dart';
import '../widgets/CharacterDetails.dart';
import "../data/characters.dart";
import "../models/Character.dart";

class AllCharactersPage extends StatefulWidget {
  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  //List<Character> characters;
  CharactersData data = new CharactersData();
  Character selectedCharacter;
  List<Widget> enfants;
  @override
  void onListEvent(c) {
    setState(() {
      this.selectedCharacter = c;
      print(this.selectedCharacter.name);
    });

    //rint(c.cleverness.value.toString());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("The Battle", style: TextStyle(color: Colors.white))),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //child: CharacterMaster(data.characters),
        child: Column(
          children: [
            Visibility(
              visible: selectedCharacter != null,
              child: CharacterDetails(selectedCharacter),
            ),
            CharacterMaster(data.characters, this.onListEvent)
          ],
        ),
      ),
    );
    //return new CharacterMaster(data.characters).widget;
  }
}

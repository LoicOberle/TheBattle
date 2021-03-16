import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "../models/Character.dart";

class CharacterTeamPreview extends StatefulWidget {
  Character character;
  Function callBack;
  CharacterTeamPreview(Character char, f) {
    this.character = char;
    this.callBack = f;
  }
  @override
  CharacterTeamPreviewState createState() {
    print(this.character.selected.toString());
    return CharacterTeamPreviewState(this.character);
  }
}

class CharacterTeamPreviewState extends State<CharacterTeamPreview> {
  bool selected = false;
  Character character;
  Function callback;
  CharacterTeamPreviewState(Character char) {
    this.character = char;
  }

  void remove(Character c) {
    //print(c.name);

    setState(() {
      //selected = !selected;
      //c.selected = !c.selected;
      print(c.name);
      this.widget.callBack(c);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      color: character.autoSelected ? Colors.blue : Colors.red,
      height: 75.0,
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(character.imagePath())),
            Text(
              character.name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ],
        ),
        onTap: () {
          remove(character);
        },
      ),
    );
  }
}

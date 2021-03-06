import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "../models/Character.dart";

class CharacterPreview extends StatefulWidget {
  Character character;
  Function callBack;
  CharacterPreview(Character char, f) {
    this.character = char;
    this.callBack = f;
  }
  @override
  CharacterPreviewState createState() {
    print(this.character.selected.toString());
    return CharacterPreviewState(this.character);
  }
}

class CharacterPreviewState extends State<CharacterPreview> {
  bool selected = false;
  Character character;
  Function callback;
  CharacterPreviewState(Character char) {
    this.character = char;
  }

  void toggleSelected(Character c) {
    //print(c.name);

    setState(() {
      selected = !selected;
      //c.selected = !c.selected;
      this.widget.callBack(c);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      color: character.selected ? Colors.green : Colors.red,
      height: 35.0,
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
          toggleSelected(character);
        },
      ),
    );
  }
}

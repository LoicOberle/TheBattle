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
    //print(this.widget.character.cleverness.value.toString());
    this.widget.callBack(c);
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      color: selected ? Colors.green : Colors.red,
      height: 100.0,
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

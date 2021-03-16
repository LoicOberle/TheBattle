import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../models/Character.dart";

class CharacterDetails extends StatefulWidget {
  Character character;

  CharacterDetails(Character char) {
    this.character = char;
  }

  @override
  State<StatefulWidget> createState() {
    return CharacterDetailsState(this.character);
  }
}

class CharacterDetailsState extends State<CharacterDetails> {
  bool empty = true;
  Character character;
  CharacterDetailsState(Character char) {
    print("lol");

    this.character = char;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Container(
        color: Colors.red[100],
        child: Row(
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
                    "Cleverness: " + this.character.cleverness.value.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 20.0)),
                Text(
                    "Intelligence: " +
                        this.character.intelligence.value.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 20.0))
              ],
            )
          ],
        ),
      ),
    );
  }
}

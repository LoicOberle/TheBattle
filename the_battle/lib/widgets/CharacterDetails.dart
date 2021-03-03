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
    this.character = char;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage(character.imagePath()),
                width: 50,
                height: 50,
              ),
              Text(
                character.name,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ),
          Column(
            children: [
              Text("Strength: " + this.character.strength.value.toString()),
              Text("Speed: " + this.character.speed.value.toString()),
              Text("Cleverness: " + this.character.cleverness.value.toString()),
              Text("Intelligence: " +
                  this.character.intelligence.value.toString())
            ],
          )
        ],
      ),
    );
  }
}

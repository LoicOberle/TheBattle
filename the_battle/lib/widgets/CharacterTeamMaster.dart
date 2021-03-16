import 'package:flutter/cupertino.dart';

import "../models/Character.dart";
import "CharacterPreview.dart";
import 'CharacterTeamPreview.dart';

class CharacterTeamMaster extends StatelessWidget {
  List<Character> characters;
  Function callback;
  CharacterTeamMaster(chars, f) {
    this.callback = f;
    this.characters = chars;
  }

  void onElementEvent(Character c) {
    this.callback(c);
    //print(c.cleverness.value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (BuildContext context, int index) {
              return CharacterTeamPreview(
                  characters.elementAt(index), this.onElementEvent);
            }));
  }
}

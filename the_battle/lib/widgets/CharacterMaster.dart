import 'package:flutter/cupertino.dart';

import "../models/Character.dart";
import "CharacterPreview.dart";

class CharacterMaster extends StatelessWidget {
  List<Character> characters;
  Function callback;
  CharacterMaster(chars, f) {
    this.callback = f;
    this.characters = chars;
  }
  void onElementEvent(Character c) {
    this.callback(c);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (BuildContext context, int index) {
              return CharacterPreview(
                  characters.elementAt(index), this.onElementEvent);
            }));
  }
}

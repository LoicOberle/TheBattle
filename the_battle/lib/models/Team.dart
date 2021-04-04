import 'package:the_battle/models/Shield.dart';

import "Player.dart";
import "Character.dart";
import '../data/characters.dart';
import "dart:math";

class Team {
  String uuid;
  Player player;
  List<Character> characters;
  String name;
  bool validated = false;
  Shield shield;
  Team(n) {
    this.name = n;
    this.characters = [];
    this.randomSelectedCharacters();
  }
  void randomSelectedCharacters() {
    Random r = new Random();
    int rand1 = r.nextInt(CharactersData.characters.length);
    CharactersData.AutoSelect(rand1);
    int rand2 = r.nextInt(CharactersData.characters.length);
    CharactersData.AutoSelect(rand2);
    this.characters.add(CharactersData.characters[rand1]);
    this.characters.add(CharactersData.characters[rand2]);
  }

  bool addCharacter(Character c) {
    if (this.characters.length < 5) {
      this.characters.add(c);
      c.selected = true;
      return true;
    } else {
      return false;
    }
  }

  bool removeCharacter(Character c) {
    if (this.characters.length > 2) {
      this.characters.remove(c);
      c.selected = false;
      return true;
    } else {
      return false;
    }
  }
}

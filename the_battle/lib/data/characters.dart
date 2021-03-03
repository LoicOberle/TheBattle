import "../models/Character.dart";

class CharactersData {
  List<Character> characters;
  CharactersData() {
    this.characters = [];
    this.characters.add(new Character("001", "Han Droid", 0, 4, 4, 4));
    this.characters.add(new Character("002", "Garbagecol Hector", 5, 1, 1, 5));
    this.characters.add(new Character("003", "Algo Ritm", 5, 1, 1, 5));
    this.characters.add(new Character("004", "Foobar Baz", 5, 4, 2, 1));
    this.characters.add(new Character("005", "Joh Ndoe", 4, 3, 3, 2));
    this.characters.add(new Character("006", "Rid Mi", 3, 3, 3, 3));
    this.characters.add(new Character("007", "Asyn Kawait", 4, 5, 2, 1));
    this.characters.add(new Character("008", "Ja Vaskript", 3, 3, 3, 3));
    this.characters.add(new Character("009", "Hel Oworld", 5, 5, 1, 1));
    this.characters.add(new Character("010", "A Pachi", 5, 5, 2, 0));
  }
}
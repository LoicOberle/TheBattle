import "../models/Character.dart";

class CharactersData {
  static List<Character> characters = [];
  CharactersData() {
    //CharactersData.characters = [];
    CharactersData.characters
        .add(new Character("001", "Han Droid", 0, 4, 4, 4));
    CharactersData.characters
        .add(new Character("002", "Garbagecol Hector", 5, 1, 1, 5));
    CharactersData.characters
        .add(new Character("003", "Algo Ritm", 5, 1, 1, 5));
    CharactersData.characters
        .add(new Character("004", "Foobar Baz", 5, 4, 2, 1));
    CharactersData.characters.add(new Character("005", "Joh Ndoe", 4, 3, 3, 2));
    CharactersData.characters.add(new Character("006", "Rid Mi", 3, 3, 3, 3));
    CharactersData.characters
        .add(new Character("007", "Asyn Kawait", 4, 5, 2, 1));
    CharactersData.characters
        .add(new Character("008", "Ja Vaskript", 3, 3, 3, 3));
    CharactersData.characters
        .add(new Character("009", "Hel Oworld", 5, 5, 1, 1));
    CharactersData.characters.add(new Character("010", "A Pachi", 5, 5, 2, 0));

    CharactersData.characters
        .add(new Character("011", "Bin Harry", 5, 4, 0, 3));
    CharactersData.characters
        .add(new Character("012", "Cee Sharp", 3, 5, 2, 2));
    CharactersData.characters.add(new Character("013", "Jay Son", 5, 3, 3, 1));
    CharactersData.characters.add(new Character("014", "Forloop", 5, 3, 3, 1));
    CharactersData.characters.add(new Character("015", "Bakdor", 5, 3, 2, 2));
    CharactersData.characters
        .add(new Character("016", "Single Tone", 5, 3, 2, 2));
    CharactersData.characters.add(new Character("017", "Ifelse", 5, 3, 2, 2));
    CharactersData.characters.add(new Character("018", "AI", 1, 1, 5, 5));
    CharactersData.characters.add(new Character("019", "U Buntu", 3, 5, 2, 2));
    CharactersData.characters
        .add(new Character("020", "Ivan Tloop", 3, 5, 2, 2));
  }
  static void AutoSelect(id) {
    CharactersData.characters[id].autoSelected = true;
    CharactersData.characters[id].selected = true;
  }
}

import "Skill.dart";

class Character {
  String uuid;
  String name;
  Skill strength;
  Skill cleverness;
  Skill intelligence;
  Skill speed;
  String image;
  bool selected;
  bool autoSelected;
  Character(_uuid, _name, _st, _sp, _cl, _in) {
    this.autoSelected = false;
    this.selected = false;
    this.uuid = _uuid;
    this.name = _name;
    this.image = this.imagePath();
    this.strength = new Skill("strength", _st);
    this.speed = new Skill("speed", _sp);
    this.cleverness = new Skill("cleverness", _cl);
    this.intelligence = new Skill("intelligence", _in);
  }
  String imagePath() {
    return "./assets/images/characters/character-" + this.uuid + ".png";
  }
}

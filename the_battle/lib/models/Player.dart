import "Team.dart";

class Player {
  String uuid;
  String firstname;
  String lastname;
  String email;
  int gender;
  Team team;
  Player(id, fn, ln, em, g) {
    this.team = new Team("Ma team");
    this.uuid = id;
    this.firstname = fn;
    this.lastname = ln;
    this.email = em;
    this.gender = g;
  }
}

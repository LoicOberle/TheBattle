import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';
import 'package:the_battle/pages/TeamPage.dart';

class ChangePageWidget extends StatelessWidget {
  changePage(String s, BuildContext c) {
    if (s == "liste") {
      Navigator.pushNamed(c, "/");
    }
    if (s == "team") {
      Navigator.pushNamed(c, "/team");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        width: 200.0,
        height: 75.0,
        child: RaisedButton(
          onPressed: () {
            changePage("liste", context);
          },
          child: Text("Characters"),
        ),
      ),
      Container(
        height: 75.0,
        width: 200.0,
        child: RaisedButton(
          onPressed: () {
            changePage("team", context);
          },
          child: Text("My team"),
        ),
      ),
    ]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_battle/data/shieldIcons.dart';
import 'package:the_battle/data/shields.dart';
import 'package:the_battle/models/Player.dart';

class TeamCustomPage extends StatefulWidget {
  Player player;

  TeamCustomPage(Player p) {
    this.player = p;
  }
  @override
  _TeamCustomPageState createState() => _TeamCustomPageState(this.player);
}

class _TeamCustomPageState extends State<TeamCustomPage> {
  Player player;
  final _formKey = GlobalKey<FormState>();
  _TeamCustomPageState(Player p) {
    this.player = p;
  }
  @override
  Widget build(BuildContext context) {
    ShieldIcons i = new ShieldIcons();
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("The Battle", style: TextStyle(color: Colors.white))),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //child: CharacterMaster(data.characters),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Placeholder"),
              Text("Select your shield"),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Shields.shields.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image(
                        image: AssetImage(Shields.shields[index].imagePath()),
                        color: Shields.shields[index].color,
                      );
                    }),
              ),
              Text("Select your icon"),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Image(
                        image: AssetImage(
                            ShieldIcons.shieldicons[index].imagePath()),
                        color: ShieldIcons.shieldicons[index].color,
                      );
                    }),
              ),
              TextFormField(
                decoration:
                    InputDecoration(fillColor: Colors.white, filled: true),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter The name of the team';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("WIP")));
                  },
                  child: Text("Confirm Team"))
            ],
          ),
        ),
      ),
    );
    //return new CharacterMaster(data.characters).widget;
  }
}

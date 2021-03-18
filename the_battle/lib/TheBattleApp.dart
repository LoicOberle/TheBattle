import 'package:flutter/material.dart';
import 'package:the_battle/data/characters.dart';
import 'package:the_battle/pages/TeamCustomPage.dart';
import 'models/Player.dart';
import 'pages/AllCharactersPage.dart';
import 'pages/TeamPage.dart';

class TheBattleApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp> {
  @override
  final CharactersData data = new CharactersData();
  final Player _player = new Player("uuid", "John", "Doe", "john@doe.com", 1);
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {
        "/": (context) => AllCharactersPage(_player),
        "/team": (context) => TeamPage(_player),
        "/team-custom": (context) => TeamCustomPage(_player)
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Knewave",
        primarySwatch: Colors.blue,
      ),
      //home: AllCharactersPage(_player),
    );
  }
}

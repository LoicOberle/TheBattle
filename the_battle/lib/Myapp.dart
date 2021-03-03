import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import "pages/AllCharactersPage.dart";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Knewave",
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'The'),
      home: AllCharactersPage(),
    );
  }
}

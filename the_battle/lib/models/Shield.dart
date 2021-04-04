import 'package:flutter/material.dart';
import 'package:the_battle/models/ShieldIcon.dart';

class Shield {
  String uuid;
  ShieldIcon shield;
  Color color;
  Shield(String id) {
    this.uuid = id;
    this.color = Colors.black;
  }
  String imagePath() {
    return "./assets/images/shields/shield-" + this.uuid + ".png";
  }
}

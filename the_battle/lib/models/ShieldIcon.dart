import 'package:flutter/material.dart';

class ShieldIcon {
  String uuid;
  Color color;
  ShieldIcon(String id) {
    this.uuid = id;
    this.color = Colors.white;
  }

  String imagePath() {
    return "./assets/images/shieldicons/shield-icon-" + this.uuid + ".png";
  }
}

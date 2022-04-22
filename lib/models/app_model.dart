import 'package:flutter/material.dart';

class AppModel {
  final String sound;
  final String? Image;
  final String jpName;
  final String enName;

  const AppModel({
    required this.sound,
    @required this.Image,
    required this.enName,
    required this.jpName,
  });
}

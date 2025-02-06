import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final Color? color;
  final String? imagePath;

  MenuItem(this.title, {this.subtitle, this.icon, this.color, this.imagePath});
}

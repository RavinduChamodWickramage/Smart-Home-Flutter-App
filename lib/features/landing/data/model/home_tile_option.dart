import 'package:flutter/material.dart';
import 'package:smart_home/helpers/enums.dart';

class HomeTileOption {

  final IconData icon;
  final String label;
  final HomeTileOptions option;

  HomeTileOption({
    required this.icon,
    required this.label,
    required this.option
  });
}
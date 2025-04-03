import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle? {
  TextStyle withColor(Color color) => this!.copyWith(color: color);
}

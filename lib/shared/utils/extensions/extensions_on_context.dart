import 'package:flutter/material.dart';

extension Context on BuildContext {
  double get sizeWidth => MediaQuery.sizeOf(this).width;
  double get sizeHeight => MediaQuery.sizeOf(this).height;
}

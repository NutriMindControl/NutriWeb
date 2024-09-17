import 'package:flutter/material.dart';

class SizeCalculator {
  double calcSize(BuildContext context, double percent) {
    final width = MediaQuery.of(context).size.width;
    return width * percent;
  }
}
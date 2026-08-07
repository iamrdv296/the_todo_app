import 'package:flutter/material.dart';
import 'dart:math';

class DummyWidget extends StatelessWidget {
  final Color? color;

  const DummyWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(color: color ?? _randomColor());
  }

  Color _randomColor() {
    final Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}

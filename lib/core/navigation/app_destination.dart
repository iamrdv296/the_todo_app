import 'package:flutter/material.dart';

@immutable
class AppDestination {
  const AppDestination({
    required this.icon,
    required this.title,
    required this.destination,
  });

  final IconData icon;
  final String title;
  final Widget destination;
}

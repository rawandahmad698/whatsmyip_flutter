import 'package:flutter/material.dart';
import 'package:whatsmyip/home.dart';

void main() {
  runApp(MaterialApp(
    title: "What's my IP?", 
    theme: ThemeData(
       appBarTheme: AppBarTheme(
       color: Colors.green.shade800,
    ),
    ),
    home: HomePage()
    ),
    );
}
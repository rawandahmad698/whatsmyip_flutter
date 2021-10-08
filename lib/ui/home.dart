import 'package:flutter/material.dart';
import 'package:whatsmyip/IP.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("What's my IP?"),
    ),
    body: IPPage()
    );
  }
}

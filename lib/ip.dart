import 'package:flutter/material.dart';
import 'package:whatsmyip/repository/ip_repository.dart';
import 'package:whatsmyip/repository/repository.dart';
import 'package:whatsmyip/ui/controller.dart';

class IPPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IPPage();
}

class _IPPage extends State<IPPage> {
  final _controller = IpController(IPRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _controller.ip(),
      builder: (context, snapshot) {
        var ip = snapshot.data;
        if (ip == null) {
          return Center(child: CircularProgressIndicator());
        }
        return Center(child: Text(ip, style: TextStyle(fontSize: 23)));
      },
    );
  }
}

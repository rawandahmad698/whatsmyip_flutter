import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whatsmyip/model/ip_model.dart';
import 'package:whatsmyip/repository/repository.dart';

class IPRepository implements Repository {
  String dataURL = "https://api.ipify.org/?format=json";

  @override
  Future<String> getIp() async {
    String ip = "-";
    var url = dataURL;
    http.Response response = await http.get(Uri.parse(dataURL));

    final apiResponse = json.decode(response.body);
    ip = apiResponse['ip'];
    return ip;
  }
}

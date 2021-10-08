class IPModel {
  final String ip;

  IPModel(this.ip);

  IPModel.fromJson(Map<String, String> json) : ip = json['ip'] as String;

  get ipString {
    return ip;
  }
}

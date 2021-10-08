
import 'package:whatsmyip/repository/repository.dart';

class IpController {
  final Repository _repository;
  IpController(this._repository);
  Future<String> ip() {
    return _repository.getIp();
  }
}
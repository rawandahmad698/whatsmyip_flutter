
import 'package:whatsmyip/model/ip_model.dart';

abstract class Repository {
  Future<String> getIp();
}

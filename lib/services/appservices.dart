import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Appservices extends GetxService {
  Future<Appservices> appServices() async {
    await GetStorage.init();
    return this;
  }
}

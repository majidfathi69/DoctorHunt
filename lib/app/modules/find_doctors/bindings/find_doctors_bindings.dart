import 'package:get/get.dart';

import '../controllers/find_doctors_controllers.dart';

class FindDoctorsBinding extends Bindings{
  @override
  void dependencies() {
    return Get.lazyPut<FindDoctorsController>(() => FindDoctorsController());
  }
}
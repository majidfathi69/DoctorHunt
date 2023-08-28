import 'package:get/get.dart';

import '../controllers/find_doctors_controller.dart';

class FindDoctorsBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<FindDoctorsController>(() => FindDoctorsController());
  }
}
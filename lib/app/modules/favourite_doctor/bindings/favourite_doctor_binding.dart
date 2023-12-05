import 'package:get/get.dart';

import '../controllers/favourite_doctor_controller.dart';

class FavouriteDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteDoctorController>(() => FavouriteDoctorController());
  }
}

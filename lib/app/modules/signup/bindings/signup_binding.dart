import 'package:doctor_hunt/app/modules/signup/controllers/singup_controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingupController>(() => SingupController());
  }
}

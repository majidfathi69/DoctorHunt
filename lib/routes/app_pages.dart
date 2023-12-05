// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../app/modules/doctor_appointment/bindings/doctor_appointment_binding.dart';
import '../app/modules/doctor_appointment/views/doctor_appointment_view.dart';
import '../app/modules/doctor_select_time/bindings/doctor_select_time_binding.dart';
import '../app/modules/doctor_select_time/views/doctor_select_time_view.dart';
import '../app/modules/find_doctors/bindings/find_doctors_bindings.dart';
import '../app/modules/find_doctors/views/find_doctors_view.dart';
import '../app/modules/home/bindings/home_binding.dart';
import '../app/modules/home/views/home_view.dart';
import '../app/modules/onBoarding/onboarding_screen.dart';
import '../app/modules/popular_doctor/bindings/popular_doctor_bindings.dart';
import '../app/modules/popular_doctor/views/popular_doctor_view.dart';
import '../app/modules/root/bindings/root_binding.dart';
import '../app/modules/root/views/root_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.ONBOARDING,
          page: () => const OnboardingScreenOne(),
          children: [
            GetPage(
              name: _Paths.ONBOARDING_TWO,
              page: () => const OnboardingScreenTwo(),
              children: [
                GetPage(
                  name: _Paths.ONBOARDING_THREE,
                  page: () => const OnboardingScreenThree(),
                ),
              ],
            ),
          ],
        ),
        GetPage(
          name: _Paths.POPULAR_DOCTOR,
          page: () => const PopularDoctorView(),
          binding: PopularDoctorBinding(),
        ),
        GetPage(
          name: _Paths.DOCTOR_APPOINTMENT,
          page: () => const DoctorAppointmentView(),
          binding: DoctorAppointmentBinding(),
        ),
        GetPage(
          name: _Paths.HOME,
          binding: HomeBinding(),
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: _Paths.DOCTOR_SELECT_TIME,
          page: () => const DoctorSelectTimeView(),
          binding: DoctorSelectTimeBinding(),
        ),
        GetPage(
          name: _Paths.FIND_DOCTORS,
          page: () => const FindDoctorsView(),
          binding: FindDoctorsBinding(),
        ),
      ],
    ),
  ];
}

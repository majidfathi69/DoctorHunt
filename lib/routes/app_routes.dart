// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ONBOARDING = _Paths.ONBOARDING;
  static const ONBOARDING_TWO = ONBOARDING + _Paths.ONBOARDING_TWO;
  static const ONBOARDING_THREE = ONBOARDING_TWO + _Paths.ONBOARDING_THREE;

  static const DOCTOR_DETAILS = _Paths.DOCTOR_DETAILS;
}

abstract class _Paths {
  static const ONBOARDING = '/onboarding';
  static const ONBOARDING_TWO = '/onboarding_two';
  static const ONBOARDING_THREE = '/onboarding_three';
  static const DOCTOR_DETAILS = '/doctor_details';
}

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ONBOARDING = _Paths.ONBOARDING;
  static const ONBOARDING_TWO = ONBOARDING + _Paths.ONBOARDING_TWO;
  static const ONBOARDING_THREE = ONBOARDING_TWO + _Paths.ONBOARDING_THREE;

  static const DOCTOR_SELECT_TIME = _Paths.DOCTOR_SELECT_TIME;
}

abstract class _Paths {
  static const ONBOARDING = '/onboarding';
  static const ONBOARDING_TWO = '/onboarding_two';
  static const ONBOARDING_THREE = '/onboarding_three';
  static const DOCTOR_SELECT_TIME = '/doctor_select_time';
}

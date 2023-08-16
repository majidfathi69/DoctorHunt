part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ONBOARDING = _Paths.ONBOARDING;
  static const ONBOARDING_TWO = ONBOARDING + _Paths.ONBOARDING_TWO;
  static const ONBOARDING_THREE = ONBOARDING_TWO + _Paths.ONBOARDING_THREE;
}

abstract class _Paths {
  static const ONBOARDING = '/onboarding';
  static const ONBOARDING_TWO = '/onboarding_two';
  static const ONBOARDING_THREE = '/onboarding_three';
}
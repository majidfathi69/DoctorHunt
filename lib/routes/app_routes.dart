// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ONBOARDING = _Paths.ONBOARDING;
  static const ONBOARDING_TWO = ONBOARDING + _Paths.ONBOARDING_TWO;
  static const ONBOARDING_THREE = ONBOARDING_TWO + _Paths.ONBOARDING_THREE;

  static const DOCTOR_DETAILS = _Paths.DOCTOR_DETAILS;
  static const FAVOURITE_DOCTOR = _Paths.FAVOURITE_DOCTOR;
  static const POPULAR_DOCTOR = _Paths.POPULAR_DOCTOR;
  static const DOCTOR_APPOINTMENT = _Paths.DOCTOR_APPOINTMENT;
  static const DOCTOR_SELECT_TIME = _Paths.DOCTOR_SELECT_TIME;
  static const HOME = _Paths.HOME;
  static const FIND_DOCTORS = _Paths.FIND_DOCTORS;
}

abstract class _Paths {
  static const ONBOARDING = '/onboarding';
  static const ONBOARDING_TWO = '/onboarding_two';
  static const ONBOARDING_THREE = '/onboarding_three';
  static const DOCTOR_DETAILS = '/doctor_details';
  static const FAVOURITE_DOCTOR = '/favourite_doctor';
  static const POPULAR_DOCTOR = '/popular_doctor';
  static const DOCTOR_APPOINTMENT = '/doctor_appointment';
  static const DOCTOR_SELECT_TIME = '/doctor_select_time';
  static const HOME = '/home';
  static const FIND_DOCTORS = '/find_doctors';
}

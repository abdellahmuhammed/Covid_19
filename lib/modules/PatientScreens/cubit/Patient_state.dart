// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
@immutable
abstract class PatientStates {}

class PatientInitial extends PatientStates {}
class ChangeShowPasswordState extends PatientStates {}
class ChangeBottomNavBarState extends PatientStates {}

// get PatientProfile

class LoadingGetPatientDataState extends PatientStates{}
class GetPatientDataStateSuccess extends PatientStates{}
class GetPatientDataStateError extends PatientStates{}


// update PatientProfile


class LoadingUpdateDataUserState extends PatientStates{}
class UpdateDataUserStateSuccess extends PatientStates{}
class UpdateDataUserStateError extends PatientStates{
  final String onError;

  UpdateDataUserStateError(this.onError);
}

//user_emergency_contact
class LoadingUserEmergencyContactDataState extends PatientStates{}
class GetUserEmergencyContactDataStateSuccess extends PatientStates{}
class GetUserEmergencyContactDataStateError extends PatientStates{}

//Infected Data
class LoadingInfectedDataState extends PatientStates{}
class GetInfectedDataSuccessState extends PatientStates{}
class GetInfectedDataErrorState extends PatientStates{}



import 'package:flutter/material.dart';
@immutable
abstract class RegisterStates {}

class InitialState extends RegisterStates {}
class RegisterGetData extends RegisterStates {}
class RegisterChangeState extends RegisterStates{}
class GradeInitial extends RegisterStates {}
class GradeGetData extends RegisterStates {}
class UniversityGetData extends RegisterStates {}
class RegisterErrorState extends RegisterStates {}
class RegisterLoadingState extends RegisterStates {}
class RegisterSuccessState extends RegisterStates {}
class ChangeGradeDropdownState extends RegisterStates {}
class ChangeUniversityDropdownState extends RegisterStates {}
class ChangeGenderDropdownState extends RegisterStates {}
class LogOut extends RegisterStates {}

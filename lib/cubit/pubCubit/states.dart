


import 'package:flutter/material.dart';

@immutable
abstract class PubStates {}

class PubInitial extends PubStates {}
//
 class ChangeState extends PubStates {}
//
// class RegisterLoadingState extends PubStates {}
//
// class RegisterSuccessState extends PubStates {
//   // final RegisterModel datamodel;
//   // RegisterSuccessState(this.datamodel);
// }

class RegisterErrorState extends PubStates {
  final String error;

  RegisterErrorState(this.error);
}
class GetData extends PubStates {}

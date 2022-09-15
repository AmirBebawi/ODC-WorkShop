import 'package:flutter/material.dart';

@immutable
abstract class ExamsState {}
class ExamsInitial extends ExamsState {}
class ExamsGetData extends ExamsState {}
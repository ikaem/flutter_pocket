import 'package:flutter/material.dart';

// TODO potentually use equatable here or freezed - equatable maybe better
@immutable
class LoginArgsValue {
  const LoginArgsValue({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  // TODO COULD this class potentuaally validate stuff

}

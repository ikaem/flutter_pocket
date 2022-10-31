import 'package:flutter/cupertino.dart';
import 'package:riverpod_guide/src/models/user.dart';

class AuthController extends ChangeNotifier {
  // this is mutable state
  User? user;

  // this is computed state
  bool get isSingedIn => user != null;

  // this is function to mutate the state - and notify listeners
  Future<void> signOut() async {
    user = null;
    notifyListeners();
  }

  Future<void> signIn() async {
    user = User(name: "Karlo");
    notifyListeners();
  }
}

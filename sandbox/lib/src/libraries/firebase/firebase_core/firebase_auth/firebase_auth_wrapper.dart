import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthWrapper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> getCurrentUserId() async {
    try {
      final User? currentUser = _auth.currentUser;

      // TODO this i think actually gets entire user

      if (currentUser == null) throw "No current user found";

      return currentUser.uid;
    } on FirebaseAuthException catch (e) {
      // TODO this should probably return better error of some sort - some generic error, that rest of our app can recongize
      throw Exception(e.message);
    } catch (e) {
      throw Exception("Current user was not found for some reason");
    }
  }

  // ok, this is returning success or response - i would rather it throw an error , and have that error caught somewhere up

  Future<User> register({
    required String email,
    required String username,
    required String password,
  }) async {
    try {
// dont forget to update the databse with the user data

      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final User? user = userCredential.user;

// TODO not sure this is correct - could user be created, but we dont anyhing back?
      if (user == null) throw "No user created";

      return user;
    } on FirebaseAuthException catch (e) {
      // IN TUTORIAL, RESPONSE WAS ERROR HERE - I PREFER LEVING IT ERROR, AND CATCHING IT IN THE BLOC
      throw Exception(e.message);
    } catch (e) {
      throw Exception(
          "User was not created for some reason - or at least we did not get the response");
    }
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);

      final User? user = userCredential.user;

      if (user == null) throw "No such user found";

      return user.uid;
    } on FirebaseAuthException catch (e) {
      // TODO this should probably return better error of some sort - some generic error, that rest of our app can recongize
      throw Exception(e.message);
    } catch (e) {
      throw Exception("User was not found for some reason");
    }
  }

  Future<void> logout() async => await _auth.signOut();
}

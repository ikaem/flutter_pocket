import 'package:firebase_core/firebase_core.dart';
import 'package:sandbox/firebase_options.dart';

class FirebaseCoreWrapper {
  // TODO this can easily be a static mehtod
  // Future<void> initializeFirebaseApp() async => await Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform,
  //     );

  // here is a static method
  // but it actualyl returns an isntance of the class itself
  static Future<FirebaseCoreWrapper> initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return FirebaseCoreWrapper();
  }
}

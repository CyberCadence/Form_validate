// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCi8Kk1KoHOr7QT6GNyEbSfTMvk0TG56SY',
    appId: '1:453945219699:web:bf18df54170496de8be806',
    messagingSenderId: '453945219699',
    projectId: 'newcrudd',
    authDomain: 'newcrudd.firebaseapp.com',
    storageBucket: 'newcrudd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU5rbSc9OkiLvbLx8aZKnz6FRiFZp7Ijk',
    appId: '1:453945219699:android:301f5606d28f306d8be806',
    messagingSenderId: '453945219699',
    projectId: 'newcrudd',
    storageBucket: 'newcrudd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsnotvu3drYtGK5OA2JAg9saA-5m5xn9s',
    appId: '1:453945219699:ios:8a2e29d785359f0c8be806',
    messagingSenderId: '453945219699',
    projectId: 'newcrudd',
    storageBucket: 'newcrudd.appspot.com',
    iosClientId: '453945219699-8pb3chb4kdl10nhiph4r4lut77pqivoo.apps.googleusercontent.com',
    iosBundleId: 'com.example.gitFetchapi2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsnotvu3drYtGK5OA2JAg9saA-5m5xn9s',
    appId: '1:453945219699:ios:8a2e29d785359f0c8be806',
    messagingSenderId: '453945219699',
    projectId: 'newcrudd',
    storageBucket: 'newcrudd.appspot.com',
    iosClientId: '453945219699-8pb3chb4kdl10nhiph4r4lut77pqivoo.apps.googleusercontent.com',
    iosBundleId: 'com.example.gitFetchapi2',
  );
}
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
    apiKey: 'AIzaSyDBEiiR08cWwH-T29qcrp938_5lA3jBqHw',
    appId: '1:243639695490:web:de8ffe6baf631ac1459c9b',
    messagingSenderId: '243639695490',
    projectId: 'freshfood-a990d',
    authDomain: 'freshfood-a990d.firebaseapp.com',
    storageBucket: 'freshfood-a990d.appspot.com',
    measurementId: 'G-E4LHS8874W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDr8O14bGW9Wc3N_TalErHm_KeWEMwCO0I',
    appId: '1:243639695490:android:6fab4e3daa555a8a459c9b',
    messagingSenderId: '243639695490',
    projectId: 'freshfood-a990d',
    storageBucket: 'freshfood-a990d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC7KjibLkViDIGZwiweLnOMmNN0vnMZo4',
    appId: '1:243639695490:ios:fd38e76e1cb62170459c9b',
    messagingSenderId: '243639695490',
    projectId: 'freshfood-a990d',
    storageBucket: 'freshfood-a990d.appspot.com',
    iosBundleId: 'com.example.freshfood',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAC7KjibLkViDIGZwiweLnOMmNN0vnMZo4',
    appId: '1:243639695490:ios:9b7c1ef98ed85283459c9b',
    messagingSenderId: '243639695490',
    projectId: 'freshfood-a990d',
    storageBucket: 'freshfood-a990d.appspot.com',
    iosBundleId: 'com.example.freshfood.RunnerTests',
  );
}
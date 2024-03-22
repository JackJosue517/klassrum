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
    apiKey: 'AIzaSyAINBH9lGnzt4TQbcjIJuE0sSohkVe0fys',
    appId: '1:146657631176:web:1886d069477704b7bcfefd',
    messagingSenderId: '146657631176',
    projectId: 'klassrum-2884d',
    authDomain: 'klassrum-2884d.firebaseapp.com',
    databaseURL: 'https://klassrum-2884d-default-rtdb.firebaseio.com',
    storageBucket: 'klassrum-2884d.appspot.com',
    measurementId: 'G-R6KXEKCQH7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByL0hFIOB1EVuVQVabeY6IeiNA6aT4j5I',
    appId: '1:146657631176:android:b152c2bd053820d7bcfefd',
    messagingSenderId: '146657631176',
    projectId: 'klassrum-2884d',
    databaseURL: 'https://klassrum-2884d-default-rtdb.firebaseio.com',
    storageBucket: 'klassrum-2884d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsNvTboQNuqX-rsAdhJrWZ-VcdjUVXE-M',
    appId: '1:146657631176:ios:ec35e0eeaadb1143bcfefd',
    messagingSenderId: '146657631176',
    projectId: 'klassrum-2884d',
    databaseURL: 'https://klassrum-2884d-default-rtdb.firebaseio.com',
    storageBucket: 'klassrum-2884d.appspot.com',
    iosBundleId: 'com.example.klassrum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsNvTboQNuqX-rsAdhJrWZ-VcdjUVXE-M',
    appId: '1:146657631176:ios:6ffe375724de4238bcfefd',
    messagingSenderId: '146657631176',
    projectId: 'klassrum-2884d',
    databaseURL: 'https://klassrum-2884d-default-rtdb.firebaseio.com',
    storageBucket: 'klassrum-2884d.appspot.com',
    iosBundleId: 'com.example.klassrum.RunnerTests',
  );
}
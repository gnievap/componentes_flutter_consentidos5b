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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCUBhnCrsjetN_-Omjrz2OkdcQLqZKc4ac',
    appId: '1:251779995976:web:5373ca149c5c948c333b7d',
    messagingSenderId: '251779995976',
    projectId: 'comp5b-24',
    authDomain: 'comp5b-24.firebaseapp.com',
    storageBucket: 'comp5b-24.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3a08Th6R4O4ii5z0bAi9pUUlSrKEyhsw',
    appId: '1:251779995976:android:0ee9ab76aad86889333b7d',
    messagingSenderId: '251779995976',
    projectId: 'comp5b-24',
    storageBucket: 'comp5b-24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxDDdTatQfjeFOzucSwU7vPW1lyLaI9Zg',
    appId: '1:251779995976:ios:839f2087eb54a2d5333b7d',
    messagingSenderId: '251779995976',
    projectId: 'comp5b-24',
    storageBucket: 'comp5b-24.appspot.com',
    iosBundleId: 'com.example.practica35b24',
  );
}

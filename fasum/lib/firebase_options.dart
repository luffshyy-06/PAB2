// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC-uFFkZDfPXe6OGTCAnlJTaEDiHX8daEA',
    appId: '1:159619567274:web:900ef014a0e05fa9df8ad3',
    messagingSenderId: '159619567274',
    projectId: 'fasum-app-13534',
    authDomain: 'fasum-app-13534.firebaseapp.com',
    storageBucket: 'fasum-app-13534.firebasestorage.app',
    measurementId: 'G-3YLZ2E15XP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfNQG3kXBR-Tay8mjo8wwcU5un-28q7r4',
    appId: '1:159619567274:android:2ea44835af83a8d4df8ad3',
    messagingSenderId: '159619567274',
    projectId: 'fasum-app-13534',
    storageBucket: 'fasum-app-13534.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDD4yZQZlgJrniwEp3AWnGGYxTojbZMtWw',
    appId: '1:159619567274:ios:de7fabe113eaf3e0df8ad3',
    messagingSenderId: '159619567274',
    projectId: 'fasum-app-13534',
    storageBucket: 'fasum-app-13534.firebasestorage.app',
    iosBundleId: 'com.example.fasum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDD4yZQZlgJrniwEp3AWnGGYxTojbZMtWw',
    appId: '1:159619567274:ios:de7fabe113eaf3e0df8ad3',
    messagingSenderId: '159619567274',
    projectId: 'fasum-app-13534',
    storageBucket: 'fasum-app-13534.firebasestorage.app',
    iosBundleId: 'com.example.fasum',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-uFFkZDfPXe6OGTCAnlJTaEDiHX8daEA',
    appId: '1:159619567274:web:7a0a636906e4d268df8ad3',
    messagingSenderId: '159619567274',
    projectId: 'fasum-app-13534',
    authDomain: 'fasum-app-13534.firebaseapp.com',
    storageBucket: 'fasum-app-13534.firebasestorage.app',
    measurementId: 'G-X8ESX6HKPB',
  );

}
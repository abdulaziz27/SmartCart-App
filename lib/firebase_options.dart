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
    apiKey: 'AIzaSyDH4A9I4-0uh8UKIIweWhaZ5FPSfRauYno',
    appId: '1:681483813998:web:33bdb18938464b2706d27f',
    messagingSenderId: '681483813998',
    projectId: 'smartcartapp-d0abb',
    authDomain: 'smartcartapp-d0abb.firebaseapp.com',
    storageBucket: 'smartcartapp-d0abb.appspot.com',
    measurementId: 'G-6Y8TBP9M9Z',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJnRSBzT-FIi0ln8MArioM8bPMMiYghGk',
    appId: '1:681483813998:ios:1197a15a3d1bdf4006d27f',
    messagingSenderId: '681483813998',
    projectId: 'smartcartapp-d0abb',
    storageBucket: 'smartcartapp-d0abb.appspot.com',
    iosBundleId: 'com.example.smartcartApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJnRSBzT-FIi0ln8MArioM8bPMMiYghGk',
    appId: '1:681483813998:ios:1197a15a3d1bdf4006d27f',
    messagingSenderId: '681483813998',
    projectId: 'smartcartapp-d0abb',
    storageBucket: 'smartcartapp-d0abb.appspot.com',
    iosBundleId: 'com.example.smartcartApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDH4A9I4-0uh8UKIIweWhaZ5FPSfRauYno',
    appId: '1:681483813998:web:2dc92494bf9cbe5506d27f',
    messagingSenderId: '681483813998',
    projectId: 'smartcartapp-d0abb',
    authDomain: 'smartcartapp-d0abb.firebaseapp.com',
    storageBucket: 'smartcartapp-d0abb.appspot.com',
    measurementId: 'G-J4FXREPLLM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHP22I5lfxU5EStg_DV7xsibqXGAkRMX8',
    appId: '1:681483813998:android:47af1d29c39c6af706d27f',
    messagingSenderId: '681483813998',
    projectId: 'smartcartapp-d0abb',
    storageBucket: 'smartcartapp-d0abb.appspot.com',
  );

}
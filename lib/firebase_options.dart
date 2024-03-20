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
    apiKey: 'AIzaSyDOLWHeFRgtv3oj8Pgaxw1HP9Mv4w7I4dU',
    appId: '1:718536976846:web:fcaa8b841a475e82c1239f',
    messagingSenderId: '718536976846',
    projectId: 'foodapp-bf81e',
    authDomain: 'foodapp-bf81e.firebaseapp.com',
    storageBucket: 'foodapp-bf81e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmvcPX2TkMVhWapNN1M84zeRrVbQsfIWo',
    appId: '1:718536976846:android:b680fe52f779a6a5c1239f',
    messagingSenderId: '718536976846',
    projectId: 'foodapp-bf81e',
    storageBucket: 'foodapp-bf81e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB04NodgTTsV7riddVa58uM7dP2vIBYDn0',
    appId: '1:718536976846:ios:b950864302ba5d36c1239f',
    messagingSenderId: '718536976846',
    projectId: 'foodapp-bf81e',
    storageBucket: 'foodapp-bf81e.appspot.com',
    iosBundleId: 'com.example.foodApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB04NodgTTsV7riddVa58uM7dP2vIBYDn0',
    appId: '1:718536976846:ios:6cac59b6a673a299c1239f',
    messagingSenderId: '718536976846',
    projectId: 'foodapp-bf81e',
    storageBucket: 'foodapp-bf81e.appspot.com',
    iosBundleId: 'com.example.foodApp.RunnerTests',
  );
}

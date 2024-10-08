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
    apiKey: 'AIzaSyBnBXGj7kpL4Rhu4nLgvctu28xcDvTzhg0',
    appId: '1:261598818514:web:1c9e554ba499211b147d0b',
    messagingSenderId: '261598818514',
    projectId: 'realtimechat-afdbc',
    authDomain: 'realtimechat-afdbc.firebaseapp.com',
    storageBucket: 'realtimechat-afdbc.appspot.com',
    measurementId: 'G-3YRDEVDFBQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCN3nYTmN1e8ERqte4VZQDTJMhYpchnmBM',
    appId: '1:261598818514:android:ab8546726a206a51147d0b',
    messagingSenderId: '261598818514',
    projectId: 'realtimechat-afdbc',
    storageBucket: 'realtimechat-afdbc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBF2QDqL9SB2e1Ft_u3FH7PmILshlZq3BA',
    appId: '1:261598818514:ios:5e9d06ba49ca263d147d0b',
    messagingSenderId: '261598818514',
    projectId: 'realtimechat-afdbc',
    storageBucket: 'realtimechat-afdbc.appspot.com',
    iosBundleId: 'com.example.realtimeChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBF2QDqL9SB2e1Ft_u3FH7PmILshlZq3BA',
    appId: '1:261598818514:ios:5e9d06ba49ca263d147d0b',
    messagingSenderId: '261598818514',
    projectId: 'realtimechat-afdbc',
    storageBucket: 'realtimechat-afdbc.appspot.com',
    iosBundleId: 'com.example.realtimeChat',
  );

}
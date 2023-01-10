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
    apiKey: 'AIzaSyBAGuz9URduDTrAop9Wr2bJArxAVXYbANc',
    appId: '1:64124076569:web:3db8c792f1bd16cfbf2088',
    messagingSenderId: '64124076569',
    projectId: 'travel-diary-9994d',
    authDomain: 'travel-diary-9994d.firebaseapp.com',
    storageBucket: 'travel-diary-9994d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0i9i9ddKH_6A4cfV7sDVo5Yn1aFEN7CM',
    appId: '1:64124076569:android:2656f46252337c8bbf2088',
    messagingSenderId: '64124076569',
    projectId: 'travel-diary-9994d',
    storageBucket: 'travel-diary-9994d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArYwo2TgzIaDN3c6vIIh4hqulzqkQz1D8',
    appId: '1:64124076569:ios:dde25d5a4f5ea888bf2088',
    messagingSenderId: '64124076569',
    projectId: 'travel-diary-9994d',
    storageBucket: 'travel-diary-9994d.appspot.com',
    iosClientId: '64124076569-mfb49fs6moubf48qakvg47jl19gkbkh2.apps.googleusercontent.com',
    iosBundleId: 'com.example.travelDairy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArYwo2TgzIaDN3c6vIIh4hqulzqkQz1D8',
    appId: '1:64124076569:ios:dde25d5a4f5ea888bf2088',
    messagingSenderId: '64124076569',
    projectId: 'travel-diary-9994d',
    storageBucket: 'travel-diary-9994d.appspot.com',
    iosClientId: '64124076569-mfb49fs6moubf48qakvg47jl19gkbkh2.apps.googleusercontent.com',
    iosBundleId: 'com.example.travelDairy',
  );
}
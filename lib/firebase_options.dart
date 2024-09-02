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
    apiKey: 'AIzaSyDqme3IMyBE8VECllrdki4WXm70P46IuQQ',
    appId: '1:219155312039:web:5bf48043fc95f5eba59a82',
    messagingSenderId: '219155312039',
    projectId: 'spotifymusciplayer',
    authDomain: 'spotifymusciplayer.firebaseapp.com',
    databaseURL: 'https://spotifymusciplayer-default-rtdb.firebaseio.com',
    storageBucket: 'spotifymusciplayer.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCswn1YptN08Ken7zfI64geuYwNG3mO6js',
    appId: '1:219155312039:android:a2e0eed23585f364a59a82',
    messagingSenderId: '219155312039',
    projectId: 'spotifymusciplayer',
    databaseURL: 'https://spotifymusciplayer-default-rtdb.firebaseio.com',
    storageBucket: 'spotifymusciplayer.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8z3mqa2mhZs4s_l3osaOml8_zLEX98b4',
    appId: '1:219155312039:ios:1d616311418665fca59a82',
    messagingSenderId: '219155312039',
    projectId: 'spotifymusciplayer',
    databaseURL: 'https://spotifymusciplayer-default-rtdb.firebaseio.com',
    storageBucket: 'spotifymusciplayer.appspot.com',
    iosBundleId: 'com.example.musicplayer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8z3mqa2mhZs4s_l3osaOml8_zLEX98b4',
    appId: '1:219155312039:ios:1d616311418665fca59a82',
    messagingSenderId: '219155312039',
    projectId: 'spotifymusciplayer',
    databaseURL: 'https://spotifymusciplayer-default-rtdb.firebaseio.com',
    storageBucket: 'spotifymusciplayer.appspot.com',
    iosBundleId: 'com.example.musicplayer',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqme3IMyBE8VECllrdki4WXm70P46IuQQ',
    appId: '1:219155312039:web:c8a5156256d05b2ba59a82',
    messagingSenderId: '219155312039',
    projectId: 'spotifymusciplayer',
    authDomain: 'spotifymusciplayer.firebaseapp.com',
    databaseURL: 'https://spotifymusciplayer-default-rtdb.firebaseio.com',
    storageBucket: 'spotifymusciplayer.appspot.com',
  );
}

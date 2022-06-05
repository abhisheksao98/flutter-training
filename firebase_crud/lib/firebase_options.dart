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
    apiKey: 'AIzaSyBSGOxo59aSJ3RbuIZa0k7DE-C3pfpq4Q0',
    appId: '1:577464449017:web:de66a74c23dfd37658af28',
    messagingSenderId: '577464449017',
    projectId: 'firebase-crud-321',
    authDomain: 'fir-crud-321.firebaseapp.com',
    storageBucket: 'firebase-crud-321.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwZsxZcJjjxKYjdP2r8H4C0t09Q-tIeo8',
    appId: '1:577464449017:android:2eb50292ac26599558af28',
    messagingSenderId: '577464449017',
    projectId: 'firebase-crud-321',
    storageBucket: 'firebase-crud-321.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4iSv-rPCjS9xrklER2wLatHHMTZ6t63I',
    appId: '1:577464449017:ios:fb11de9482002c9f58af28',
    messagingSenderId: '577464449017',
    projectId: 'firebase-crud-321',
    storageBucket: 'firebase-crud-321.appspot.com',
    iosClientId: '577464449017-te3ccjd2gd7f1k7v7nip0d0qre4gqu1j.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseCrud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4iSv-rPCjS9xrklER2wLatHHMTZ6t63I',
    appId: '1:577464449017:ios:fb11de9482002c9f58af28',
    messagingSenderId: '577464449017',
    projectId: 'firebase-crud-321',
    storageBucket: 'firebase-crud-321.appspot.com',
    iosClientId: '577464449017-te3ccjd2gd7f1k7v7nip0d0qre4gqu1j.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseCrud',
  );
}
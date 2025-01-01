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
    apiKey: 'AIzaSyAPQYJgWDokFhL8wEBMyw5NLXjFGJ0kQ48',
    appId: '1:693171513490:web:5a7261f4a288b8cf5a1e4b',
    messagingSenderId: '693171513490',
    projectId: 'newsproject-c7b8e',
    authDomain: 'newsproject-c7b8e.firebaseapp.com',
    storageBucket: 'newsproject-c7b8e.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBO5bfM3ZIlL_oCAnWj_cd4Tk-BoR6Cfqg',
    appId: '1:693171513490:android:53ef98ed28c2f2955a1e4b',
    messagingSenderId: '693171513490',
    projectId: 'newsproject-c7b8e',
    storageBucket: 'newsproject-c7b8e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFsNPpVCZi6JtSHddlOpYrSgRoe84ljWM',
    appId: '1:693171513490:ios:886bbd1a5a2c78cf5a1e4b',
    messagingSenderId: '693171513490',
    projectId: 'newsproject-c7b8e',
    storageBucket: 'newsproject-c7b8e.firebasestorage.app',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFsNPpVCZi6JtSHddlOpYrSgRoe84ljWM',
    appId: '1:693171513490:ios:886bbd1a5a2c78cf5a1e4b',
    messagingSenderId: '693171513490',
    projectId: 'newsproject-c7b8e',
    storageBucket: 'newsproject-c7b8e.firebasestorage.app',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPQYJgWDokFhL8wEBMyw5NLXjFGJ0kQ48',
    appId: '1:693171513490:web:2b05191978b0ccd85a1e4b',
    messagingSenderId: '693171513490',
    projectId: 'newsproject-c7b8e',
    authDomain: 'newsproject-c7b8e.firebaseapp.com',
    storageBucket: 'newsproject-c7b8e.firebasestorage.app',
  );
}

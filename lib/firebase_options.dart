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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBVUYmCVN50JxVRhlawwysq5chN4U-xov4',
    appId: '1:354073681960:web:5c3ed6e970b7735243551d',
    messagingSenderId: '354073681960',
    projectId: 'quiz-fireship-course',
    authDomain: 'quiz-fireship-course.firebaseapp.com',
    storageBucket: 'quiz-fireship-course.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLEorCVZxHpGAuLC7nJY11o9oiP4sJAw8',
    appId: '1:354073681960:android:a5579719ffce52b543551d',
    messagingSenderId: '354073681960',
    projectId: 'quiz-fireship-course',
    storageBucket: 'quiz-fireship-course.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBVUYmCVN50JxVRhlawwysq5chN4U-xov4',
    appId: '1:354073681960:web:38c4d0c5bff91bb243551d',
    messagingSenderId: '354073681960',
    projectId: 'quiz-fireship-course',
    authDomain: 'quiz-fireship-course.firebaseapp.com',
    storageBucket: 'quiz-fireship-course.appspot.com',
  );
}

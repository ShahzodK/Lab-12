import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'firebase_options.dart';

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
    apiKey: 'AIzaSyDK_vCTADYJClpa8q2w2-n3basOzBTuXBE',
    appId: '1:516433936980:web:3eacf333810dbfe699e3c1',
    messagingSenderId: '516433936980',
    projectId: 'lab-11-52f6f',
    authDomain: 'lab-11-52f6f.firebaseapp.com',
    storageBucket: 'lab-11-52f6f.appspot.com',
    measurementId: 'G-0S2KTSWV6X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAb_mK82aSzNzHuwr2PIAjq6gCVPFSTSws',
    appId: '1:516433936980:android:3c31f9cf6e8177fc99e3c1',
    messagingSenderId: '516433936980',
    projectId: 'lab-11-52f6f',
    storageBucket: 'lab-11-52f6f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_3OFenI0clXoK0z7eVdKpBCmvWi0AKY8',
    appId: '1:516433936980:ios:bd602ec166aef5a899e3c1',
    messagingSenderId: '516433936980',
    projectId: 'lab-11-52f6f',
    storageBucket: 'lab-11-52f6f.appspot.com',
    iosBundleId: 'com.example.lab121',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_3OFenI0clXoK0z7eVdKpBCmvWi0AKY8',
    appId: '1:516433936980:ios:a1931b64bc64b0fb99e3c1',
    messagingSenderId: '516433936980',
    projectId: 'lab-11-52f6f',
    storageBucket: 'lab-11-52f6f.appspot.com',
    iosBundleId: 'com.example.lab121.RunnerTests',
  );
}

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDaqQjxUGL_FJde3RNfpgSOE00PRxWfyCQ',
    appId: '1:884615994215:web:2f45daa6a40029dfc6adc2',
    messagingSenderId: '884615994215',
    projectId: 'ecommerce-app-468d5',
    authDomain: 'ecommerce-app-468d5.firebaseapp.com',
    storageBucket: 'ecommerce-app-468d5.appspot.com',
    measurementId: 'G-R0KC2T22PW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBK6jGytprd_HKOUoY0AkSyW9PYtVaMWEg',
    appId: '1:988153510981:android:9621d238c24621b20df72c',
    messagingSenderId: '988153510981',
    projectId: 'sneakers-app-8f1ff',
    storageBucket: 'sneakers-app-8f1ff.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-_fUlUnKUlWBChry2tRcuivbDyV9jZIU',
    appId: '1:988153510981:ios:194970fb3476f35e0df72c',
    messagingSenderId: '988153510981',
    projectId: 'sneakers-app-8f1ff',
    storageBucket: 'sneakers-app-8f1ff.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH7jrSOMidoqyGgF_ziym2VCR1ksnzan4',
    appId: '1:884615994215:ios:4a154e2783ebd519c6adc2',
    messagingSenderId: '884615994215',
    projectId: 'ecommerce-app-468d5',
    storageBucket: 'ecommerce-app-468d5.appspot.com',
    iosClientId: '884615994215-7ff4ekhg9a1n17lakdv8e3egd4huhc0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceApp.RunnerTests',
  );
}
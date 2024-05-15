import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWfzTecE9A5YxkP8Tsm8Ipo-_l--8Jjqw",
            authDomain: "itan-ibile.firebaseapp.com",
            projectId: "itan-ibile",
            storageBucket: "itan-ibile.appspot.com",
            messagingSenderId: "260581414327",
            appId: "1:260581414327:web:8aea67176f4a109e9c4432",
            measurementId: "G-5B947DC8F2"));
  } else {
    await Firebase.initializeApp();
  }
}

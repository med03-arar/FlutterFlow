import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-k7Q2ACkjtK3kUzyr6yT2avXvikT_ocM",
            authDomain: "parfum-store-p73xxd.firebaseapp.com",
            projectId: "parfum-store-p73xxd",
            storageBucket: "parfum-store-p73xxd.firebasestorage.app",
            messagingSenderId: "745483776169",
            appId: "1:745483776169:web:832777f8425fc1d79939b8"));
  } else {
    await Firebase.initializeApp();
  }
}

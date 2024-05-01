import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDIOPIj4ApZdtoWruPtS3l2JMl5o3zVvMo",
            authDomain: "smart-crop-fiz27w.firebaseapp.com",
            projectId: "smart-crop-fiz27w",
            storageBucket: "smart-crop-fiz27w.appspot.com",
            messagingSenderId: "1041443614192",
            appId: "1:1041443614192:web:846e117e21d29f0dc68135"));
  } else {
    await Firebase.initializeApp();
  }
}

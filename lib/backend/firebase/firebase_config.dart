import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4Pa-TVHIr1t2G78V9XY9r1bejO5Y1MAk",
            authDomain: "negtseg-7ag4fs.firebaseapp.com",
            projectId: "negtseg-7ag4fs",
            storageBucket: "negtseg-7ag4fs.appspot.com",
            messagingSenderId: "389364127778",
            appId: "1:389364127778:web:64bb49606d6bd3bdaf127b"));
  } else {
    await Firebase.initializeApp();
  }
}

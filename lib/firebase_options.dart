import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid
    ? const FirebaseOptions(
        apiKey: "AIzaSyBCOknvEP9ykfurG2vilrQWL01wjRMRZx4",
        appId: "1:776954515443:android:fd6e50da106c0a3a038c86",
        messagingSenderId: "776954515443",
        projectId: "booksellingapp-f263d")
    : const FirebaseOptions(
        apiKey: "your_ios_api_key",
        appId: "your_ios_app_id",
        messagingSenderId: "your_ios_messaging_sender_id",
        projectId: "your_ios_project_id",
      );

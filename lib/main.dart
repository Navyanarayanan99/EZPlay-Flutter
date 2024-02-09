import 'dart:io';

import 'package:ezplay/screens/carousal.dart';
import 'package:ezplay/screens/login_screen.dart';
import 'package:ezplay/screens/otp_screen.dart';
import 'package:ezplay/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyAz9zZm6m9b5LTvCrDMh19w_zGqMSHyywE',
              appId: '1:651768738003:android:8e66510eef2f6db5cea426',
              messagingSenderId: '651768738003',
              projectId: 'ezplay-6e011'))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ezplay',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/carousal': (context) => const Carousal(),
      },
    );
  }
}

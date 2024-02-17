import 'package:ezplay/bottomtab_screens/discover_screen.dart';
import 'package:ezplay/screens/carousal.dart';
import 'package:ezplay/screens/home_screen.dart';
import 'package:ezplay/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
          MaterialPageRoute(builder: (context) => const DiscoverScreen()));
      // context, MaterialPageRoute(builder: (context) => const Carousal()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/splash.png')),
              Text(
                'EZPLAY ESPORTS',
                style: TextStyle(color: Colors.amber[300], fontSize: 30),
              ),
            ],
          ),
        ));
  }
}

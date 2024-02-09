import 'dart:async';

import 'package:ezplay/bottomtab_screens/discover_screen.dart';
import 'package:ezplay/screens/dashboard_screen.dart';
import 'package:ezplay/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  String verificationId;
  OtpScreen({Key? key, required this.verificationId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();
  late Timer _timer;
  int _timerSeconds = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerSeconds > 0) {
          _timerSeconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 19, 17, 17),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We have sent OTP to this number',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '+91 9744123123',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Pinput(
                        length: 6,
                        showCursor: true,
                        controller: otpController,
                        defaultPinTheme: PinTheme(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: Colors.grey)),
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            PhoneAuthCredential credential =
                                await PhoneAuthProvider.credential(
                                    verificationId: widget.verificationId,
                                    smsCode: otpController.text.toString());
                            FirebaseAuth.instance
                                .signInWithCredential(credential)
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DiscoverScreen()));
                            });
                          } catch (e) {
                            print('error' + e.toString());
                          }
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(screenWidth * 1, 50)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 52, 51, 51)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        child: Text('Verify OTP',
                            style: TextStyle(
                                color: Color.fromARGB(255, 215, 211, 211),
                                fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't get OTP ?",
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 139, 138, 138)),
                    ),
                    _timerSeconds > 0
                        ? Text(
                            ' $_timerSeconds s', 
                            style: TextStyle(
                                fontSize: 18,
                                color:
                                    const Color.fromARGB(255, 139, 138, 138)),
                          )
                        : TextButton(
                            onPressed: () {
                            
                            },
                            child: Text(
                              'Click Here',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:country_picker/country_picker.dart';
import 'package:ezplay/screens/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedoCuntry = Country(
      phoneCode: '91',
      countryCode: 'IN',
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: 'India',
      displayNameNoCountryCode: 'IN',
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 19, 17, 17),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align children to the start (left)
              children: [
                Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(248, 231, 228, 228),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter Your Mobile Number',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                countryListTheme: const CountryListThemeData(
                                  bottomSheetHeight: 500,
                                ),
                                onSelect: (value) {
                                  setState(() {
                                    selectedoCuntry = value;
                                  });
                                },
                              );
                            },
                            child: Text(
                              "${selectedoCuntry.flagEmoji}",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        verificationCompleted:
                            (PhoneAuthCredential credencial) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendtoken) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpScreen(verificationId: verificationId,)));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                        phoneNumber: phoneController.text.toString(),
                      );
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    child: const Text(
                      'GET OTP',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

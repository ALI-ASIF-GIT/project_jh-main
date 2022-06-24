// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:project_jh/screens/home/home_screen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpCodeController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationReceivedID = "";
  bool otpCodeVisible = false;
  String countryDial = "+91";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Auth"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: "Mobile Number",
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              visible: otpCodeVisible,
              child: TextField(
                controller: otpCodeController,
                decoration: const InputDecoration(labelText: "OTP"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (otpCodeVisible) {
                    verifyCode();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    verifyNumber();
                  }
                },
                child: Text(otpCodeVisible ? "Login" : "Verify"))
          ],
        ),
      ),
    );
  }

  void verifyNumber() {
    auth.verifyPhoneNumber(
        phoneNumber: phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          auth
              .signInWithCredential(credential)
              .then((value) => {print("Login Successful")});
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          verificationReceivedID = verificationID;
          otpCodeVisible = true;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }

  void verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationReceivedID,
        smsCode: otpCodeController.text);
    await auth
        .signInWithCredential(credential)
        .then((value) => MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}

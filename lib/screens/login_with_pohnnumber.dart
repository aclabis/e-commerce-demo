

import 'package:blog/screens/veryfy_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class loginWithPohnNumber extends StatefulWidget {
  const loginWithPohnNumber({super.key});

  @override
  State<loginWithPohnNumber> createState() => _loginWithPohnNumberState();
}

class _loginWithPohnNumberState extends State<loginWithPohnNumber> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
   

    TextEditingController _pohnController = TextEditingController();
    final auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login With Number"),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: TextFormField(
              controller: _pohnController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "+977 9800000000"),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              
              String phoneNumber = _pohnController.text.trim();
              auth.verifyPhoneNumber(
                phoneNumber: phoneNumber,
                verificationCompleted: (_) {
                  // Handle verification completed
                },
                verificationFailed: (FirebaseAuthException e) {
                  // Handle verification failed
                },
                codeSent: (String verificationId, int? resendToken) {
                  // Handle code sent, you can navigate to the next screen to input the received code
                  // or show a dialog to input the code here
                  // For example:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VeryfyCode(verificationId: verificationId,),
                    ),
                  );
                },
                codeAutoRetrievalTimeout: (String verificationId) {
                  
                  // Handle timeout
                },
              );
            },
            child: Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(13)),
              child: Center(
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: height * 0.030,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

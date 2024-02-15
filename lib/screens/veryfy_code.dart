import 'package:blog/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VeryfyCode extends StatefulWidget {
  final String verificationId;
  const VeryfyCode({super.key, required this.verificationId});

  @override
  State<VeryfyCode> createState() => _VeryfyCodeState();
}

class _VeryfyCodeState extends State<VeryfyCode> {
  final _verifyController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
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
              controller: _verifyController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "6 digit code "),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () async {
              final token = PhoneAuthProvider.credential(
                  verificationId: widget
                      .verificationId, //back screen bata lyako  verificationId
                  smsCode: _verifyController.text.toString());

              try {
                await auth.signInWithCredential(token);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              } catch (e) {}
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

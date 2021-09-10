import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instagram/pages/mainpage.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}
final auth = FirebaseAuth.instance;
User? user;
Timer? timer;
class _VerifyState extends State<Verify> {

  @override
  void initState() {
    user = auth.currentUser;
    user!.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }
  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 90,
                    ),
            child: Center(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/instagram_logo.png',
                        height: deviceWidth * .20,
                      ),
                      SizedBox(height: deviceWidth * .1,),
                      Container(
                        width: deviceWidth * .90,

                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'An email has been sent to',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: deviceWidth * .05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${user!.email},',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: deviceWidth * .05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'please verify',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: deviceWidth * .05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: deviceWidth * .25,),
                      SizedBox(height: deviceWidth * .06,),
                      ],
                    ),
            ),
                ),
            ),
          ),
    );
  }

  Future<void> checkEmailVerified() async {
    User? user = auth.currentUser;
    await user!.reload();
    if(user.emailVerified){
      timer!.cancel();
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Mainpage(),));
      Fluttertoast.showToast(msg: 'Account created successfully',gravity: ToastGravity.TOP,);
    }
  }
}


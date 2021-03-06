import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/pages/mainpage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff459EFF;

  bool inputTextNotNull = false;
  String _username='', _password='';
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 90,
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/instagram_logo.png',
                      height: deviceWidth * .17,
                    ),
                    SizedBox(height: deviceWidth * .1,),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .14,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: TextField(
                            onChanged: (text){
                              setState(() {
                                _username=text.trim();
                                if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                  inputTextNotNull = true;
                                }else{
                                  inputTextNotNull = false;
                                }
                              });
                            },
                            controller: usernameController,
                            style: TextStyle(
                              fontSize: deviceWidth * .040,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: deviceWidth * .04,),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .14,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: TextField(
                            onChanged: (text){
                              setState(() {
                                _password=text.trim();
                                if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                  inputTextNotNull = true;
                                }else{
                                  inputTextNotNull = false;
                                }
                              });
                            },
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: deviceWidth * .040,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: deviceWidth * .04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/resetpage');
                          },
                          child: Text('Forgot password?      ',
                            style: TextStyle(
                              fontSize: deviceWidth * .035,
                              color: Colors.blue[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceWidth * .035,),
                    inputTextNotNull?
                    GestureDetector(
                      onLongPressStart: (s){
                        setState(() {
                          buttonColor = 0xff78C9FF;
                        });
                      },
                      onLongPressEnd: (s){
                        setState(() {
                          buttonColor = 0xff459EFF;
                        });
                      },
                      onTap: () => login(_username, _password),
                      child: Container(
                        width: deviceWidth * .90,
                        height: deviceWidth * .14,
                        decoration: BoxDecoration(
                          color: Color(buttonColor),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: deviceWidth * .040,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ):
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .14,
                      decoration: BoxDecoration(
                        color: Color(0xff78C9FF),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: deviceWidth * .040,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: deviceWidth * .25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: deviceWidth * .40,
                          color: Color(0xffA2A2A2),
                        ),
                        SizedBox(width: 10,),
                        Text('OR',
                          style: TextStyle(
                            fontSize: deviceWidth * .040,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 1,
                          width: deviceWidth * .40,
                          color: Color(0xffA2A2A2),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceWidth * .06,),

                  ],
                ),
                Container(
                  width: deviceWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",
                            style: TextStyle(
                              fontSize: deviceWidth * .040,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text('Sign up',
                              style: TextStyle(
                                color: Color(0xff459EFF),
                                fontSize: deviceWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  login(String _username,String _password) async {
    try {
      await auth.signInWithEmailAndPassword(email: _username, password: _password);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Mainpage(),));
      Fluttertoast.showToast(msg: 'Logged in Successfully',gravity: ToastGravity.TOP,);
    }on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: '${e.message}',gravity: ToastGravity.TOP,);
    }
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagram/pages/activity.dart';
import 'package:instagram/pages/forgotpassword.dart';
import 'package:instagram/pages/login.dart';
import 'package:instagram/pages/reelspage.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/signup.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/mainpage.dart';
import 'package:instagram/pages/dm.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/editprofile.dart';
import 'package:instagram/pages/newpost.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Instagram',
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/login': (context) => Login(),
      '/signup': (context) => Signup(),
      '/mainpage': (context) => Mainpage(),
      '/searchpage': (context) => Searchpage(),
      '/dmpage': (context) => Dmpage(),
      '/profilepage': (context) => Profilepage(),
      '/activitypage': (context) => Activitypage(),
      '/newpost': (context) => NewPost(),
      '/editprofile': (context) => EditProfile(),
      '/reelpage': (context) => ReelPage(),
      '/resetpage': (context) => Reset(),
    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),

  ));
}






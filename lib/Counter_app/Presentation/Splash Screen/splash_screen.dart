import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Pages/Login_Screen/login_page.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 1500), () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>  LoginPage())));
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Center(child: Lottie.asset('assets/animation/tracsis.json',
      frameRate: FrameRate.max,)),
    );
  }
}

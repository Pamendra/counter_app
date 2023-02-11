import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Counter_app/Presentation/Pages/Login_Screen/login_page.dart';
import 'Counter_app/Presentation/Splash Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xFFF7F7F7),
        splash: Image.asset('assets/images/train1.png',), // use any widget here
        nextScreen: MyHomePage(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 2000,
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFE8ECEF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 150,
              child: Image.asset('assets/images/tcs.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Welcome to TRACSIS", style: TextStyle(fontSize: 20),),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LoginPage()));
                  },style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff010326),

                  )
                  , child: Text('Login')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




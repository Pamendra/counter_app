import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation extends StatelessWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child:Lottie.network('https://assets2.lottiefiles.com/packages/lf20_u3cun709.json') ,
        ),
      ),
    );
  }
}

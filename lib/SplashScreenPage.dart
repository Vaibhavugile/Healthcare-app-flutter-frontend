import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledpro/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {

    super.initState();

    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'login')));
    });
  }



  Widget build(BuildContext context) {
   return Scaffold(
     body:
       Center(
           child: Image.asset('assets/images/logo (1).png'))
   );
  }
}
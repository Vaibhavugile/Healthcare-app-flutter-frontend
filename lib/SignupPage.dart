import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
       child: Center(
        child: Container(
          width: 377,
          child: Column(
            children: [
              Text('SIGN UP',
                  style:
                  TextStyle( fontSize: 20, fontWeight: FontWeight.w800)),
              Container(height: 30,),
              SizedBox(
                height: 70,
                width: 377,
                child: TextField(

                  decoration: InputDecoration(
                      hintText: 'Name',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      ),
                ),
              ),
              Container(height: 30,),
              SizedBox(
                height: 70,
                width: 377,
                child: TextField(

                  decoration: InputDecoration(
                    hintText: 'Email ID',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(15, 124, 186, 1),
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(15, 124, 186, 1),
                          width: 1,
                        )),
                  ),
                ),
              ),
              Container(height: 30,),
              SizedBox(
                height: 70,
                width: 377,
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(15, 124, 186, 1),
                      )),
                ),
              ),
              Container(height: 30,),
              SizedBox(
                height: 70,
                width: 377,
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Re-Enter Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 124, 186, 1),
                            width: 1,
                          )),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(15, 124, 186, 1),
                      )),
                ),
              ),
              Container(height: 40,),
              SizedBox(
                width: 361,
                height: 70,

                child: ElevatedButton(
                    onPressed: () {
                     stdout.write('SignUp Successfully');
                     stdin.readLineSync();
                     print("SignUp Successfully");
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),




            ],
          ),
        ),
      ),
      )

    );
  }

}
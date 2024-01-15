import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body:

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/home.png'),
            Row(
              children: [
                Card(
                  child: SizedBox(
                    height:162,
                    width: 162,
                    child: Column(
                      children: [
                        Image.asset('assets/images/Picture3.png'),
                        Text('Disease Detect',style: TextStyle(
                          fontStyle: FontStyle.normal ,fontSize: 15,fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height:162,
                    width: 162,
                    child: Column(
                      children: [
                        Image.asset('assets/images/drugs.png'),
                        Text('Drug Advisor',style: TextStyle(
                            fontStyle: FontStyle.normal ,fontSize: 15,fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: SizedBox(
                    height:162,
                    width: 162,
                    child: Column(
                      children: [
                        Image.asset('assets/images/doctor.png'),
                        Text('Book Appointment',style: TextStyle(
                            fontStyle: FontStyle.normal ,fontSize: 15,fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height:162,
                    width: 162,
                    child: Column(
                      children: [
                        Image.asset('assets/images/yoga.png'),
                        Text('Yoga Suggestion',style: TextStyle(
                            fontStyle: FontStyle.normal ,fontSize: 15,fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height:67 ,
              width: 359,
              color: Color.fromRGBO(15, 124, 186, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: Image.asset('assets/images/hm.png'),
                  onPressed:(){},color:Colors.white ,iconSize:5,),
                  IconButton(icon: Image.asset('assets/images/ic2.png'),
                    onPressed:(){},color:Colors.white ,iconSize:5 ,),
                  IconButton(icon: Image.asset('assets/images/ic3.png'),
                    onPressed:(){},color:Colors.white ,iconSize:5 ,),
                  IconButton(icon: Image.asset('assets/images/ic4.png'),
                    onPressed:(){},color:Colors.white ,iconSize:5,),

                ],
              ),
            )
          ],
        ),
      ),


  );
  }

}
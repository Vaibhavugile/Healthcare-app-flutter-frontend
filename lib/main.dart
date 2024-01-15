import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitledpro/HomeScreenPage.dart';
import 'package:untitledpro/SignupPage.dart';
import 'package:untitledpro/SplashScreenPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var EmailText = TextEditingController();
  var PasswordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 309,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Image.asset('assets/images/main.png'),
                  ),
                  Container(
                    height: 20,
                  ),
                  Text('LOG IN',
                      style:
                          TextStyle( fontSize: 20, fontWeight: FontWeight.w800)),

                  Container(
                    height: 20,
                  ),
                  SizedBox(
                    height: 70,
                    width: 270,
                    child: TextField(
                      controller: EmailText,


                      decoration: InputDecoration(

                       hintText: 'Email ID ',
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
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color.fromRGBO(15, 124, 186, 1),
                          )),

                    ),
                  ),

                  Container(
                    height: 20,
                  ),
                  SizedBox(
                    height: 70,
                    width: 270,
                    child: TextField(
                      controller: PasswordText,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',

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
                          prefixIcon: Icon(
                            Icons.lock_open_outlined,
                            color: Color.fromRGBO(15, 124, 186, 1),
                          )),
                    ),
                  ),
                  Container(
                    height: 40,
                  ),
                  SizedBox(
                    width: 140,
                    height: 45,

                    child: ElevatedButton(
                        onPressed: () {
                          String uEmail = EmailText.text.toString();
                          String upassword = PasswordText.text.toString();
                          print("Welcome:$uEmail,password:$upassword");

                          Navigator.push(context, MaterialPageRoute(builder: (Context)=>HomeScreen(),));
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have Account ?"),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (Context)=>SignupPage(),));
                        }, child: Text('signup')),
                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

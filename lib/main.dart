
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/buttons.dart';
import 'components/text_fields.dart';
void main() => runApp(myApp());

class myApp extends StatelessWidget {
  final GlobalKey<FormState> _keyform = GlobalKey<FormState>();
  void formsubmit() {
    if (_keyform.currentState!.validate()) {}
  }
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: size < 1200
          ? Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _keyform,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Login",
                          style: TextStyle(fontFamily: 'HomemadeApple', fontSize: 50),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          field('E-mail', 'Enter valid email',Icons.arrow_forward, size ,10,0,1,false),
                          SizedBox(height: 20),
                          field('Password', 'Enter your password',Icons.lock,size,10,0,2,true),
                          SizedBox(height: 20),
                          button(size,formsubmit, 'Login'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )
          : Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SafeArea(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size / 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/Work.jpg'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Form(
                        key: _keyform,
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontFamily: 'HomemadeApple', fontSize: 50),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                              field('E-mail', 'Enter Email',Icons.arrow_forward_ios, size ,10,150,1,false),
                              SizedBox(height: 20),
                              field('Password', 'Enter your password',Icons.lock,size,10,150,2,true),
                              SizedBox(height: 20),
                              button(size,formsubmit,'Login'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  bool hidePassword =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 28, right: 28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 46),
              Row(
                children: [
                  Container(
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage('assets/img.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Welcome Back,',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Make it work,make it right,make it fast.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  prefixIcon: Icon(CupertinoIcons.person),
                  hintText: 'E-Mail',
                ),
                style: TextStyle(fontSize: 16),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 17,
              ),
              TextField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  prefixIcon: Icon(Icons.fingerprint),
                  suffixIcon: InkWell(
                      onTap: () {
                        if(hidePassword == true)
                          {
                            hidePassword = false;
                          }
                        else
                          {
                            hidePassword = true;
                          }
                        setState(() {

                        });
                      },
                      child: Icon(CupertinoIcons.eye)),
                  hintText: 'Password',
                ),
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Color(0xff4ca0d1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'OR',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black, width: 1.4),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                        width: 30,
                        child: Image(image:AssetImage('assets/download.png'),)),
                    Text(
                      ' Sign-In with Google',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.5,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Signup',
                    style: TextStyle(
                        color: Color(0xff4ca0d1),
                        fontSize: 18.5,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

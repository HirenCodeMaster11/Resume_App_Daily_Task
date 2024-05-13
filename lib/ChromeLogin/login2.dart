import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    TextEditingController txtPassword = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f4f8),
      body: Form(
        key : formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.45,
                  width: width * 0.294,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 16),
                            child: Image.asset(
                              'assets/g.png',
                              height: 62,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 21, top: 8),
                            child: Text(
                              'Use your google account',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.45,
                  width: width * 0.28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 34),
                          child: buildTextFormField(controller: txtPassword),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            children: [
                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Color(0xff1b62d3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Row(
                            children: [
                              Text(
                                'Not your computer? Use Guest mode to sign in privatly.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                              Text(
                                'Learn more',
                                style: TextStyle(
                                    color: Color(0xff1b62d3),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 142),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'create account',
                                style: TextStyle(
                                    color: Color(0xff1b62d3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            GestureDetector(
                              onTap: () {
                                bool response = formkey.currentState!.validate();
                                if (response) {
                                  password = txtPassword.text;
                                  Navigator.of(context).pushNamed('/page2');
                                }
                                else{
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Enter the valid Password'),
                                      action: SnackBarAction(label: 'Retry', onPressed:() {
                                        formkey.currentState!.reset();
                                      },),
                                      duration: Duration(seconds: 6),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                height: height * 0.046,
                                width: width * 0.048,
                                decoration: BoxDecoration(
                                  color: Color(0xff1b62d3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'English (United States)',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 16,
                ),
                SizedBox(width: 526),
                Text(
                  'Help',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Text(
                  'Privacy',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Text(
                  'Terms',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField({TextEditingController? controller}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is must be required';
        }
        if (!RegExp(r'[a-z]').hasMatch(value)) {
          return 'Password one lowercase letter';
        }
        if (!RegExp(r'[A-Z]').hasMatch(value)) {
          return 'Password one uppercase letter';
        }
        if (value.contains(' ')) {
          return 'Space is not Allow !';
        }
        if (!RegExp(r'\d').hasMatch(value)) {
          return 'Password one nummeric';
        }
        if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
          return 'Password must contain at least one special character';
        }
        if (value.length < 8) {
          return 'Password must be at least 8 characters';
        }
      },
      controller: controller,
                                      obscureText: hidePassword?true:false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        prefixIcon: Icon(Icons.fingerprint,size: 22,),
                                        suffixIcon: InkWell(
                                          onTap: () {
                                            setState(() {
                                              hidePassword = !hidePassword;
                                            });
                                          },
                                          child: Icon(CupertinoIcons.eye,size: 22,),
                                        ),
                                        hintText: 'Password',
                                      ),
                                      style: TextStyle(fontSize: 16),
                                      cursorColor: Colors.black,
                                    );
  }
}
String password = "field must be requried";
bool hidePassword = true;
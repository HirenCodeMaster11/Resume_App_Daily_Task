import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f4f8),
      body: Form(
        key: formKey,
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
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
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
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 34),
                          child: buildTextFormField(controller: txtEmail),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            children: [
                              Text(
                                'Forgot email?',
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
                                bool response =
                                    formKey.currentState!.validate();
                                if (response) {
                                  email = txtEmail.text;
                                  Navigator.of(context).pushNamed('/page');
                                }
                                else{
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Enter the valid Email'),
                                      action: SnackBarAction(label: 'Retry', onPressed:() {
                                        formKey.currentState!.reset();
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
          return 'Email or Phone is required';
        }
        if (!value.contains('@gmail.com')) {
          return 'Must Be Enter @gmail.com';
        }
        if (value.contains(' ')) {
          return 'Do not enter the sapce';
        }
        if (RegExp(r'[A-Z]').hasMatch(value)) {
          return 'Entre the must be upeercase requried';
        }
        if (value.toString() == '@gmail.com') {
          return 'Example : abc@gmail.com';
        }
        if (value.length < 12) {
          return 'Email must be at least 12 characters';
        }
      },
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: 'Email or phone',
      ),
      cursorColor: Colors.black,
    );
  }
}

String email = 'entre the valid username';

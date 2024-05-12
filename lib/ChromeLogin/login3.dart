import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login3 extends StatefulWidget {
  const login3({super.key});

  @override
  State<login3> createState() => _login3State();
}

class _login3State extends State<login3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f4f8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.45,
            width: width * 0.59,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 40),
                      child: Image.asset(
                        'assets/R.png',
                        height: 180,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 544,),
                    Row(
                      children: [
                        Text('Your Sign in is',style: TextStyle(fontSize: 36,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('SuccessFully',style: TextStyle(fontSize: 36,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                )
              ],
            ),
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
    );;
  }
}

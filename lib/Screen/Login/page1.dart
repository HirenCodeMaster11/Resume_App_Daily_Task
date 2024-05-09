import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app_daily_task/Screen/Login/page2.dart';


class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6e618),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Image.asset('assets/im.png',height: 360,fit: BoxFit.contain,),
            SizedBox(height: 130),
            Text('Build Awesome Apps',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),
            Text("Let's put your creativity on the",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
            Text('development highway',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
            SizedBox(height: 28,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('page2');
                  },
                  child: Container(
                    height: 52,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1.8),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    alignment: Alignment.center,
                    child: Text('LOGIN',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                SizedBox(width: 14,),
                Container(
                  height: 52,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  alignment: Alignment.center,
                  child: Text('SIGNUP',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


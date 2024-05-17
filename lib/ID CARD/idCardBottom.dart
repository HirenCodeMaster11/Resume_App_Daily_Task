import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Bottom() {
  return Container(
    height: 288.4,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(topRight: Radius.circular(300)),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              ' The Flutter',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3D3B40)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              ' Warriors Batch',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3D3B40)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              ' Directed By',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffACE2E1)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              ' TheAkhilSarkar',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffACE2E1)),
            ),
          ],
        ),
      ],
    ),
  );
}
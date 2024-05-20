import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DynamicTextField.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          'Dynamic TextField View',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            Text(
              'Your Skills',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  skills,
                  style: TextStyle(fontSize: 25

                      , fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

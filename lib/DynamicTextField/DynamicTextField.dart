import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DynamicTextField extends StatefulWidget {
  const DynamicTextField({super.key});

  @override
  State<DynamicTextField> createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Dynamic TextField',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(txtControllerList.length, (index) => ListTile(
            title: TextField(
              controller: txtControllerList[index],
              decoration: InputDecoration(
                hintText: 'Skill',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 4),
                ),
              ),
            ),
          ),),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              skills = txtController.text;
              for(int i = 1; i<txtControllerList.length; i++)
                {
                  skills= skills + '\n' + txtControllerList[i].text;
                }
              Navigator.of(context).pushNamed('/skill');
            },
            child: Container(
              height: 45,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
            ),
          ),
          SizedBox(width: 130,),
          FloatingActionButton(onPressed: () {
            TextEditingController txtController = TextEditingController();
            setState(() {
              txtControllerList.add(txtController);
            });
          },
            backgroundColor: Colors.transparent,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(Icons.add,color: Colors.white,),
            ),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(onPressed: () {
            TextEditingController txtController = TextEditingController();
            setState(() {
              index = txtControllerList.length-1;
              if(txtControllerList.length >1){
                txtControllerList.remove(txtControllerList[index]);
              }
            });
          },
            backgroundColor: Colors.transparent,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(Icons.remove,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
TextEditingController txtController = TextEditingController();

List txtControllerList = [
  txtController,
];
int index = 0;
String skills = '';
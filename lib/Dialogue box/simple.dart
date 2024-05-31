import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Simple extends StatefulWidget {
  const Simple({super.key});

  @override
  State<Simple> createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dialog Box',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Basic dialog title',style: TextStyle(fontSize: 24),),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Text('This is the simple dialog box coding to my preparation',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        ),
                         SizedBox(height: 12),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close',style: TextStyle(fontSize: 22)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              child: const Text('Show Dialog',style: TextStyle(fontSize: 22)),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog.fullscreen(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 17,right: 17),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('name',),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 17,right: 17),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('Surname',),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 17,right: 17),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('Father name',),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 17,right: 17),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('Mother name',),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {

                            },
                            child: const Text('Save',style: TextStyle(fontSize: 22),),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close',style: TextStyle(fontSize: 22)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Show Fullscreen Dialog',style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
      ),
    );
  }
}

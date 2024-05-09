import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Drawer',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xff202226)),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff2e3034),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xff4e5054),
                thickness: 1.8,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'All Inbox',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.all_inbox,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Divider(
                color: Color(0xff4e5054),
                thickness: 1.8,
              ),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    color: Color(0xff5a4644),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.inbox,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Inbox',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Color(0xff4e5054),
                thickness: 1.8,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Starred',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Snoozed',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.schedule,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Important',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.label_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Sent',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Drafts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.drafts_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'All Mail',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Spam',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Trash',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.delete_sweep_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Divider(
                color: Color(0xff4e5054),
                thickness: 1.8,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Create New',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Divider(
                color: Color(0xff4e5054),
                thickness: 1.8,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Setting',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

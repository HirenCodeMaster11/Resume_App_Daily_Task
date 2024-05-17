import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../ImagePicker.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

ImagePicker imagePicker = ImagePicker();
File? file;

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtName = TextEditingController();
    TextEditingController txtSurame = TextEditingController();
    TextEditingController txtPhone = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Registration Form',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 80,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: Icon(
                          Icons.image,
                          size: 42,
                          color: Colors.blue,
                        )),
                    IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: Icon(
                          Icons.camera_alt_rounded,
                          size: 42,
                          color: Colors.blue,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Name(txtName),
                SizedBox(
                  height: 20,
                ),
                Surname(txtSurame),
                SizedBox(
                  height: 20,
                ),
                Phone(txtPhone),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gender :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      activeColor: Colors.blue,
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 20),
                    ),
                    Radio(
                      activeColor: Colors.blue,
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text('Female', style: TextStyle(fontSize: 20)),
                    Radio(
                      activeColor: Colors.blue,
                      value: 'Other',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text('Other', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Text(
                  'Hobby :',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: hobby[0],
                      onChanged: (value) {
                        setState(() {
                          hobby[0] = value!;
                        });
                      },
                    ),
                    Text(
                      'Reading',
                      style: TextStyle(fontSize: 20),
                    ),
                    Checkbox(
                      activeColor: Colors.blue,
                      value: hobby[1],
                      onChanged: (value) {
                        setState(() {
                          hobby[1] = value!;
                        });
                      },
                    ),
                    Text(
                      'Playing',
                      style: TextStyle(fontSize: 20),
                    ),
                    Checkbox(
                      activeColor: Colors.blue,
                      value: hobby[2],
                      onChanged: (value) {
                        setState(() {
                          hobby[2] = value!;
                        });
                      },
                    ),
                    Text(
                      'Writing',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        bool response = formKey.currentState!.validate();
                        if (response) {
                          name = txtName.text;
                          surname = txtSurame.text;
                          phone = txtPhone.text;
                          Navigator.of(context).pushNamed('/id');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Enter Valid Input'),
                              action: SnackBarAction(
                                label: 'Retry',
                                onPressed: () {
                                  formKey.currentState!.reset();
                                },
                              ),
                              duration: Duration(seconds: 6),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 42,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField Phone(TextEditingController? controller) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'This Field Is Must Be Required';
        }
        if (value.length != 10) {
          return 'Phone Number is 10 Digits';
        }
      },
      controller: controller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.blue),
                  label: Text('Phone'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              );
  }

  TextFormField Surname(TextEditingController? controller) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'This Field Is Must Be Required';
        }
      },
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Surname',
        hintStyle: TextStyle(color: Colors.blue),
        label: Text('Surname'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }

  TextFormField Name(TextEditingController? controller) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'This Field Is Must Be Required';
        }
      },
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.blue),
        hintText: 'Name',
        label: Text('Name'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}

String gender = 'Male';
List<bool> hobby = [false, false, false];
String name = '';
String surname = '';
String phone = '';
String Hobby = '';
String Gender = '';

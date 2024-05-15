import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Image Picker',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: (fileImage != null)
                    ? DecorationImage(
                  fit: BoxFit.cover,
                        image: FileImage(fileImage!),
                      )
                    : null,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    XFile? xfileImage =
                        await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileImage = File(xfileImage!.path);
                    });
                  },
                  icon: const Icon(
                    Icons.camera_alt_rounded,
                    size: 70,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 90,
              ),
              IconButton(
                  onPressed: () async {
                    XFile? xfileImage = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      fileImage = File(xfileImage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.image,
                    size: 70,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            height: 53,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Text(
              'Upload Image',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

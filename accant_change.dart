// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:tikts_app_nadroid/login.dart';

class CircularImagePicker extends StatefulWidget {
  const CircularImagePicker({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CircularImagePickerState createState() => _CircularImagePickerState();
}

class _CircularImagePickerState extends State<CircularImagePicker> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.photo_library,
                  color: Colors.black,
                ),
                title: const Text(
                  'gallery',
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'Vazir-Bold'),
                ),
                onTap: () {
                  _pickImage(
                    ImageSource.gallery,
                  );
                  Navigator.of(context).pop();
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 210, 180, 89),
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo_camera,
                  color: Colors.black,
                ),
                title: const Text(
                  'Camera',
                  style: TextStyle(fontFamily: 'Vazir-Bold'),
                ),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawerEnableOpenDragGesture: true,

      //  drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 3),
            GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: CircleAvatar(
                radius: 90,
                backgroundColor: const Color(0xFFFFCF10),
                child: _image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(
                          _image!,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFCF10),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 200,
                        height: 200,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(fontFamily: 'Vazir-Bold'),
                    cursorColor: Colors.amber,
                    decoration: InputDecoration(
                      labelText: 'email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: 'Vazir-Bold'),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(fontFamily: 'Vazir-Bold'),
                    cursorColor: Colors.amber,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      labelText: 'Phone number',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'Vazir-Bold'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: 'Vazir-Bold'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(fontFamily: 'Vazir-Bold'),
                    cursorColor: Color.fromARGB(255, 245, 187, 13),
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: 'Vazir-Bold'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            OutlinedButton(
              onPressed: () {
                Get.to(const Login_page());
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(263, 65),
                elevation: 24,
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.black26, width: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(flex: 4),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

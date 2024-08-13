// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tikts_app_nadroid/Card.dart';

// ignore: camel_case_types
class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/App2.png',
                    fit: BoxFit.cover,
                    width: 84,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cine',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Vazir-Bold',
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Now',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Vazir-Bold'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 60.0,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          cursorColor: Colors.black26,
                          cursorHeight: 14.0,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                            label: Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Vazir-Bold',
                                fontSize: 18,
                              ),
                            ),
                            prefix: Icon(
                              Icons.email,
                              color: Colors.black26,
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide()),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 60.0,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          obscureText: true,
                          mouseCursor: MouseCursor.defer,
                          cursorColor: Colors.black26,
                          cursorHeight: 13.0,
                          keyboardType: TextInputType.visiblePassword,
                          autofocus: false,
                          decoration: InputDecoration(
                            label: Text(
                              'password',
                              style: TextStyle(
                                fontFamily: 'Vazir-Bold',
                                fontSize: 17,
                                color: Colors.black26,
                              ),
                            ),
                            prefix: Icon(
                              Icons.lock,
                              color: Colors.black26,
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                            ),
                            focusColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Get.to(const Out_check_page());
                    },
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(233, 55),
                      elevation: 0,
                      backgroundColor: Colors.amber,
                      side: const BorderSide(color: Colors.amber, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Vazir-Bold',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // // FloatingActionButton(onPressed: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

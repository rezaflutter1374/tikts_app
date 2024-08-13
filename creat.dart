// ignore_for_file: camel_case_types, unused_element

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/sms_page.dart';

class creat_account extends StatefulWidget {
  const creat_account({super.key});

  @override
  State<creat_account> createState() => _creat_accountState();
}

final TextEditingController _emailController = TextEditingController();
bool _isButtonEnabled = false;

class _creat_accountState extends State<creat_account> {
  //دستور ات ایمیل
  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  void _validateEmail() {
    setState(() {
      _isButtonEnabled = _isValidEmail(_emailController.text);
    });
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    );
    return emailRegExp.hasMatch(email);
  }

//دستور ات ایمیل
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
  //fun  ten

//instructions to check the correctness of the email
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //Check the size of the plate
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double screenHeight = MediaQuery.of(context).size.height;
    //Check the size of the plate
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ logo-1.png',
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  //code for email
                  child: Column(
                    children: [
                      TextField(
                        textAlignVertical: TextAlignVertical.top,

                        // cursorWidth: 9.0,

                        enabled: true,
                        controller: _emailController,
                        cursorColor: Colors.black26,

                        keyboardType: TextInputType.emailAddress,
                        //=  cursorHeight: 18,

                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp("[a-zA-Z0-9@._]"),
                          ),
                        ],
                        decoration: const InputDecoration(
                          label: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
                              fontFamily: 'Vazir-Bold',
                            ),
                          ),
                          prefix: Icon(
                            Icons.email,
                            color: Colors.black26,
                          ),

                          //   filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      //code for email
                      SizedBox(height: screenHeight * 0.03),
                      //Code for password
                      const TextField(
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
                      //code for password
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                // code for Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding:
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    onPressed: _isButtonEnabled
                        ? () {
                            Get.to(() => const Verification());
                          }
                        : null,
                    child: const Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Vazir-Bold',
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const Spacer(),

                //////
                const Text(
                  'By signing up you have agreed to our',
                  style: TextStyle(
                      fontFamily: 'Vazir-Bold', color: Colors.black26),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Terms of Use & Privacy Policy',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Vazir-Bold',
                  ),
                ),
                // code for Button
              ],
            ),
          ),
        ),
      ),
    );
  }
}

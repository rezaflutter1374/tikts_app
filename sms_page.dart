// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: duplicate_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
//*This page should include the photo and SMS code and the
//click button, and the line below the 4-digit code should be
//drawn and include the text below the photo.
  @override
  State<Verification> createState() => _VerificationState();
}

//Sms code commantds and numbers entered for Sms in four numbers
//code commands. SMS|| conditions for 4 digits
class _VerificationState extends State<Verification> {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

//Instructions for checking the number of blank houses
  void _nextField(String value, int index) {
    if (value.isNotEmpty && index < _focusNodes.length - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);

      // code commands. SMS|^| conditions for 4 digits
    }
  }

//In the terminal, after clicking,
//it shows the request text to resend the code
  void _resendCode() {
    // Logic to resend the code
    if (kDebugMode) {
      print("Resending Code...?");
    }
  }

//Instructions for checking the number of blank houses
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/App2.png',
                        fit: BoxFit.cover,
                        width: 84,
                      ),
                      const SizedBox(height: 3),
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
                      const SizedBox(height: 10),
                      const Text(
                        'Verify Code',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Vazir-Bold',
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Please check your email.',
                        style: TextStyle(
                            color: Colors.black26, fontFamily: 'Vazir-Bold'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'We just sent a verification code on your email.',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black26,
                            fontFamily: 'Vazir-Bold'),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 1),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: constraints.maxHeight * 0.3,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(4, (index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                        width: 50,
                                        child: TextField(
                                          controller: _controllers[index],
                                          focusNode: _focusNodes[index],
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          cursorColor: Colors.amber,
                                          maxLength: 1,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          decoration: const InputDecoration(
                                            counterText: '',
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 36, 36, 36),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.amber,
                                                  width: 2),
                                            ),
                                          ),
                                          onChanged: (value) =>
                                              _nextField(value, index),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 1,
                                      color: const Color(0xFF000000),
                                    ),
                                  ],
                                );
                              }),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Didn't get a code?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Vazir-Bold',
                                  ),
                                ),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: _resendCode,
                                  child: const Text(
                                    ' Try again',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.amber,
                                      fontFamily: 'Vazir-Bold',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.amber,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 70),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                onPressed: () {
                                  Get.to(const Login_page());
                                },
                                child: const Text(
                                  'VERIFY',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Vazir-Bold',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'By signing up you have agreed to our',
                              style: TextStyle(
                                  fontFamily: 'Vazir-Bold',
                                  color: Colors.black26),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            const Text(
                              'Terms of Use & Privacy Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Vazir-Bold',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
//Sms code commantds and numbers entered for Sms in four numbers
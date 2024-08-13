// ignore_for_file: sort_child_properties_last, camel_case_types, avoid_unnecessary_containers, unnecessary_import, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'creat.dart';

class opning_page extends StatefulWidget {
  const opning_page({super.key});

  @override
  State<opning_page> createState() => _opning_pageState();
}

//First page login to pages
//This page is like other pages * responsive
//In this page, there is a photo and a
//button to enter the page to create a user account
class _opning_pageState extends State<opning_page> {
  @override
  Widget build(BuildContext context) {
    // double buttonWidth = MediaQuery.of(context).size.width * 0.7;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFAC937),
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  //First page login to pages
                  child: Image.asset(
                    'assets/images/Applogo.png',
                    fit: BoxFit.cover,
                    width: 84,
                    height: 84,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cine',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Vazir-Bold',
                        ),
                      ),
                      Text(
                        'Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Vazir-Bold',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFAC937),
                      padding:
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(vertical: 23, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                    onPressed: () {
                      Get.to(() => const creat_account());
                    },
                    child: const Text(
                      'SIGN UP WITH EMAIL',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Vazir-Bold',
                          fontWeight: FontWeight.w700),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('No Account!!');
                  },
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontFamily: 'Vazir-Bold',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//In this page, there is a photo and a
//button to enter the page to create a user account
   //First page login to pages
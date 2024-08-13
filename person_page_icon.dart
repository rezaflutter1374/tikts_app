import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Home_tikets.dart';
import 'package:tikts_app_nadroid/accant_change.dart';

// ignore: camel_case_types
class navigator_person extends StatelessWidget {
  const navigator_person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90.0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Account",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Vazir-Bold',
            fontSize: 22,
            fontWeight: FontWeight.w100,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 33.0,
                ),
                Positioned(
                  right: 4,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 17,
                      minHeight: 17,
                    ),
                    child: const Text(
                      '4',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 9.0,
                          fontFamily: 'Vazir-Bold',
                          fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: IconButton(
            onPressed: () {
              Get.back(result: const HomeTikets_page());
            },
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "User email :",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Vazir-Bold",
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "username@email.com",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password: ',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Vazir-Bold',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "**********",
                style: TextStyle(fontFamily: 'Vazir-Bold', fontSize: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  Get.to(const CircularImagePicker());
                },
                child: const Text(
                  'Change',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {
                //    Get.to(const Out_check_page());
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(248, 50),
                elevation: 0,
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.black, width: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Delete account',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

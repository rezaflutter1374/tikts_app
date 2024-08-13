// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Processing.dart';

// ignore: unused_import

//Detecting Card  and page loding page
// ignore: camel_case_types
class Confirmation extends StatelessWidget {
  const Confirmation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPictuwre.asset(
                "assets/images/icon.svg",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Payment Successful!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Vazir-Bold",
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Your payment is confirmed",
              style: TextStyle(
                color: Colors.black26,
                fontFamily: "Vazir-Bold",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "You can find your ticket in the Tickets Menu",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Vazir-Bold'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amber,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Get.to(const LoadingPage());
                },
                child: const Text(
                  'Tickets',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Vazir-Bold',
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Detecting Card  and page loding page
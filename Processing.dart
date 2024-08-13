// ignore: file_names
// ignore: file_names
// ignore_for_file: unused_import, file_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Home_tikets.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Future<void> _navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Get.off(() => const HomeTikets_page());
    }
  }

  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Almost there ...",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Vazir-Bold",
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your payment is pending',
              style: TextStyle(color: Colors.black26, fontFamily: 'Vazir-Bold'),
            ),
          ],
        ),
      ),
    );
  }
}

class SpinKitFadingFour {
  const SpinKitFadingFour();
}

// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:tikts_app_nadroid/Home_tikets.dart';
import 'package:tikts_app_nadroid/masa_page.dart';

// ignore: camel_case_types
class Shopping_page extends StatelessWidget {
  const Shopping_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: const [
          // ignore: prefer_const_constructors
        ],
        title: const Text(
          "Shopping cart",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Vazir-Bold',
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton(
            onPressed: () {
              Get.to(const HomeTikets_page());
            },
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            // Images shopping
            _ticketItem('assets/images/c9cb.jpeg', 'Nov 22, 2024 - 6pm',
                'Seat 9A', '\$19.00'),
            _ticketItem('assets/images/download.jpeg', 'Nov 23, 2024 - 7pm',
                'Seat 10B', '\$20.00'),
            _ticketItem('assets/images/download.jpeg', 'Nov 24, 2024 - 8pm',
                'Seat 11C', '\$21.00'),

            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                //   Get.to(const Confirmation());
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(246, 60),
                elevation: 0,
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.amber, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'Check out',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20), // Add some space after the button
          ],
        ),
      ),
    );
  }

  Widget _ticketItem(String imagePath, String date, String seat, String price) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            imagePath,
            height: 250,
            width: 130,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: IconButton(
                      color: Colors.black,
                      iconSize: 26,
                      onPressed: () {
                        if (kDebugMode) {
                          print('thsl');
                        }
                      },
                      icon: const Icon(Icons.calendar_month_rounded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      date,
                      style: const TextStyle(fontFamily: 'Vazir-Bold'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.confirmation_number_sharp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      seat,
                      style: const TextStyle(fontFamily: 'Vazir-Bold'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      onPressed: () {
                        Get.to(());
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      price,
                      style: const TextStyle(
                        fontFamily: 'Vazir-Bold',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 90.0, 0.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const Satet_masa());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: const Text(
                    'View ticket',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Vazir-Bold',
                    ),
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: camel_case_types, file_names

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
// ignore: depend_on_referenced_packages
import 'package:tikts_app_nadroid/Payment%D9%80page_card.dart';

class Out_check_page extends StatefulWidget {
  const Out_check_page({super.key});

  @override
  State<Out_check_page> createState() => _Out_check_pageState();
}

bool _isChecked = false;

class _Out_check_pageState extends State<Out_check_page> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double cardWidth = screenWidth > 400 ? 400 : screenWidth * 0.9;
    // ignore: unused_local_variable
    double cardHeight = 90;
    // ignore: unused_local_variable
    double cardElevation = 50;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: const Text(
          'Check Out',
          style: TextStyle(
              fontFamily: 'Vazir-Bold',
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        scrolledUnderElevation: 10.0,
        leading: IconButton(
          //    highlightColor: Colors.black45,
          icon: const Icon(
            weight: 15.0,
            CupertinoIcons.arrow_left_circle,
            size: 40.0,
            color: Colors.black,
          ),
          style: const ButtonStyle(),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 140),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 4, 18, 40),
              child: SizedBox(
                width: 400,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF031227),
                            child: Image.asset(
                              'assets/images/master.png',
                              width: 340,
                              height: 340,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Credit Card',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Vazir-Bold',
                                    fontSize: 18.0),
                              ),
                              Text(
                                '1234 **** **** 6789',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Checkbox(
                                checkColor: const Color(0xFF6D6C6C),
                                activeColor: Colors.white,
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value ?? false;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Card(
            shadowColor: const Color.fromARGB(11, 0, 0, 0),
            color: const Color.fromARGB(11, 0, 0, 0),
            child: SizedBox(
              width: 400,
              height: 90,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(11, 0, 0, 0),
                          child: Image.asset(
                            'assets/images/visa 1.png',
                            width: 340,
                            height: 340,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Debit Card',
                              style: TextStyle(
                                  color: Color(0xFF100F0F),
                                  fontFamily: 'Vazir-Bold',
                                  fontSize: 18.0),
                            ),
                            Text(
                              '1234 **** **** 6789',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Vazir-Bold'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(11, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Checkbox(
                              checkColor: const Color.fromARGB(181, 0, 0, 0),
                              activeColor: const Color.fromARGB(9, 0, 0, 0),
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value ?? true;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(209, 239, 239, 238),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 30.0,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              textStyle: const TextStyle(fontSize: 15),
            ),
            child: const Text(
              '+ Add new card',
              style: TextStyle(color: Colors.black, fontFamily: 'Vazir-Bold'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Total Price:',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Vazir-Bold',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '\$38.00',
                  style: TextStyle(
                    fontFamily: 'Vazir-Bold',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          OutlinedButton(
            onPressed: () {
              Get.to(const Payment_page());
            },
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(233, 55),
              elevation: 0,
              backgroundColor: Colors.amber,
              side: const BorderSide(color: Colors.amber, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Confirm',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Vazir-Bold',
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

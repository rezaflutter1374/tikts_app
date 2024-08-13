import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Detail.dart';
import 'package:tikts_app_nadroid/Shopping.dart';

// Enumeration to represent the seat states
enum SeatState { available, selected, unavailable }

// ignore: camel_case_types
class Satet_masa extends StatefulWidget {
  const Satet_masa({super.key});

  @override
  State<Satet_masa> createState() => _Satet_masaState();
}

// ignore: camel_case_types
class _Satet_masaState extends State<Satet_masa> {
  List<SeatState> seatStates = List.generate(16, (index) {
    // Mark four seats as unavailable
    if (index == 2 || index == 5 || index == 8 || index == 11) {
      return SeatState.unavailable;
    } else {
      return SeatState.available;
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Detail",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Vazir-Bold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(const Shopping_page());
                  },
                  color: const Color.fromARGB(255, 17, 12, 12),
                  icon: const Icon(Icons.shopping_cart, size: 27.0),
                ),
                Positioned(
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 15,
                      minHeight: 14,
                    ),
                    child: const Text(
                      '8',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 7,
                          fontFamily: 'Vazir-Bold',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            color: Colors.black,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),

            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Screen',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.all(20.0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 16,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (seatStates[index] == SeatState.available) {
                            setState(() {
                              seatStates[index] =
                                  seatStates[index] == SeatState.selected
                                      ? SeatState.available
                                      : SeatState.selected;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: seatStates[index] == SeatState.unavailable
                                ? Colors.deepOrangeAccent
                                : seatStates[index] == SeatState.selected
                                    ? Colors.green
                                    : Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Seat ${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Vazir-Bold',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'A',
                        style: TextStyle(
                          fontFamily: 'Vazir-Bold',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'B',
                        style: TextStyle(
                          fontFamily: 'Vazir-Bold',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'C',
                        style: TextStyle(
                          fontFamily: 'Vazir-Bold',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'D',
                        style: TextStyle(
                          fontFamily: 'Vazir-Bold',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Divider(),
            const SizedBox(
              height: 40,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
              child: const Text(
                'Movie :  Inglourious Basterds',
                style: TextStyle(color: Colors.black, fontFamily: 'Vazir-Bold'),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Date: Mon 22/11',
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
                    'Session: 19:00',
                    style: TextStyle(
                      fontFamily: 'Vazir-Bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 44,
            ),
            OutlinedButton(
              onPressed: () {
                Get.to(const VideoPlayerScreen());
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(264, 64),
                elevation: 0,
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.black, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Vazir-Bold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

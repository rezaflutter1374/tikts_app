// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tikts_app_nadroid/Shopping.dart';
import 'package:tikts_app_nadroid/cine_wht.dart';

import 'package:url_launcher/url_launcher.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  int _activePage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _activePage = index;
    });
  }

  // ignore: unused_element
  void _launchWhatsApp() async {
    const phoneNumber =
        'YOUR_PHONE_NUMBER'; // Replace with the desired phone number
    const message = 'Hello'; // Replace with the desired message
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchYouTubeVideo(String url) async {
    // ignore: duplicate_ignore
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: duplicate_ignore
      // ignore: deprecated_member_use
      await launch(
        url,
        forceSafariVC: false, // For iOS
        forceWebView: false, // For Android
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        toolbarHeight: 80.0,
        title: const Text(
          "Tickets",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Vazir-Bold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
                onPressed: () {
                  Get.to(const Shopping_page());
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: Column(
          children: [
            _ticketItem('assets/images/c9cb.jpeg', 'Nov 22, 2024 - 6pm',
                'Seat 9A', '\$19.00'),
            _ticketItem('assets/images/download.jpeg', 'Nov 23, 2024 - 7pm',
                'Seat 10B', '\$20.00'),
            _ticketItem('assets/images/download.jpeg', 'Nov 24, 2024 - 8pm',
                'Seat 11C', '\$21.00'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: _activePage,
        onTap: _onPageChanged,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 28,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
              size: 33,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.confirmation_number,
              color: Colors.white,
              size: 28,
            ),
            activeIcon: IconButton(
              onPressed: () {
                _launchYouTubeVideo(
                    'https://www.youtube.com/watch?v=MoN9ql6Yymw&list=RDMM&index=4');
              },
              icon: const Icon(
                Icons.confirmation_number,
                size: 28,
              ),
            ),
            label: 'youtube',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(const MapLauncherDemo());
              },
              icon: const Icon(Icons.account_circle),
            ),
            activeIcon: const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 33,
            ),
            label: 'Account',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                  onPressed: () {},
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

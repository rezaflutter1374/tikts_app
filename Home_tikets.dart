import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tikts_app_nadroid/Shopping.dart';
import 'package:tikts_app_nadroid/person_page_icon.dart';
import 'package:tikts_app_nadroid/tilits.dart';

// ignore: unused_import

// Import the GetX package

// ignore: camel_case_types
class HomeTikets_page extends StatefulWidget {
  const HomeTikets_page({super.key});

  @override
  State<HomeTikets_page> createState() => _HomeTikets_pageState();
}

// ignore: camel_case_types
class _HomeTikets_pageState extends State<HomeTikets_page>
    with TickerProviderStateMixin {
  late TabController _tabController;
  // ignore: unused_field
  final int _selectedIndex = 0;
  int _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.person,
  ];

  final colors = _Colors();

  var AnimatedBottomNavigationBar;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });

    if (index == 0) {
      // Get.to(const CardHomeView());
    } else if (index == 1) {
      Get.to(const navigator_person());
    }
  }

  @override
  Widget build(BuildContext context, dynamic NotchSmoothness) {
    final screenSize = MediaQuery.of(context).size;
    final double itemWidth = screenSize.width * 0.4;
    final double itemHeight = itemWidth * 0.9;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 67, 62, 50),
        onPressed: () {
          Get.to(const ExamplePage());
          // Your action
        },
        child: const Icon(
          Icons.confirmation_number,
          size: 44.0,
          color: Color.fromARGB(255, 231, 181, 56),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive
              ? colors.activeNavigationBarColor
              : colors.notActiveNavigationBarColor;
          return Icon(
            iconList[index],
            size: 33,
            color: color,
          );
        },
        backgroundColor: const Color(0xFFFAC937),
        activeIndex: _bottomNavIndex,
        splashColor: colors.activeNavigationBarColor,
        //   borderColor: Color.fromARGB(255, 239, 215, 35),
        borderWidth: 30.0,
        height: 60.0,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 12,
        rightCornerRadius: 12,
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(const Shopping_page());
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.shopping_cart, size: 27.0),
                ),
                Positioned(
                  right: 11,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 17,
                    ),
                    child: const Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: 'Vazir-Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        title: const Text(
          'Movies',
          style: TextStyle(fontFamily: 'Vazir-Bold', color: Colors.white),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.amber,
          labelColor: Colors.white,
          dividerColor: const Color(0xFFCDCDCD),
          labelStyle: const TextStyle(
              color: Colors.white, decorationColor: Colors.white),
          tabs: const [
            Tab(
              text: "On Theater",
            ),
            Tab(text: "Pre Order"),
            Tab(text: "Coming Soon"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Available today',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Vazir-Bold',
                        fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 20,
                    runSpacing: 40,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildImageContainer(
                          'assets/images/download.jpeg', itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/imagess.jpeg', itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/s.jpeg', itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/imagess.jpeg', itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/download.jpeg', itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/imagess.jpeg', itemWidth, itemHeight),
                      _buildImageContainer('assets/images/images-w1400.jpg',
                          itemWidth, itemHeight),
                      _buildImageContainer('assets/images/images-w1400.jpg',
                          itemWidth, itemHeight),
                      _buildImageContainer(
                          'assets/images/8033109403016_99_536_0_75.jpg',
                          itemWidth,
                          itemHeight),
                      _buildImageContainer(
                          'assets/images/8033109403016_99_536_0_75.jpg',
                          itemWidth,
                          itemHeight),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Center(
            child: Text(
              'Content for Pre Order',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          const Center(
            child: Text(
              'Content for Coming Soon',
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Colors {
  final Color activeNavigationBarColor =
      const Color.fromARGB(255, 255, 255, 255);
  final Color notActiveNavigationBarColor = const Color(0xFF000000);
}

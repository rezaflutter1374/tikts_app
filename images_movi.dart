import 'package:flutter/material.dart';

// ignore: camel_case_types
class movi_immage extends StatefulWidget {
  const movi_immage({super.key});

  @override
  State<movi_immage> createState() => _movi_immageState();
}

// ignore: camel_case_types
class _movi_immageState extends State<movi_immage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.abc_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

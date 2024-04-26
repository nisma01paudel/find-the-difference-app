import 'package:flutter/material.dart';

class DifferenceApp extends StatelessWidget {
  final String image;
  const DifferenceApp({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Find The Difference",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: Image.asset('assets/images/' + image)),
    );
  }
}

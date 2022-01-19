import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dep_link/nav.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: const Center(child: Text("Profile")),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: 2,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => push(index),
        items: items(),
      ),
    );
  }
}

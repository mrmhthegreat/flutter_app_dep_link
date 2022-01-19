import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dep_link/nav.dart';

class Abouts extends StatefulWidget {
  const Abouts({Key? key}) : super(key: key);

  @override
  State<Abouts> createState() => _AboutsState();
}

class _AboutsState extends State<Abouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: 1,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => push(index),
        items: items(),
      ),
      body: const Center(child: Text("About Page")),
    );
  }
}

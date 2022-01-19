import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'nav.dart';

class deeplinkview extends StatefulWidget {
  const deeplinkview({Key? key}) : super(key: key);

  @override
  _deeplinkviewState createState() => _deeplinkviewState();
}

class _deeplinkviewState extends State<deeplinkview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Main Page")),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: 0,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => push(index),
        items: items(),
      ),
    );
  }
}

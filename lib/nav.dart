import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

BottomNavyBarItem navitem(String text, IconData ic, Color col) {
  return BottomNavyBarItem(
    icon: Icon(ic),
    title: Text(text),
    activeColor: col,
  );
}

void push(int index) {
  if (index == 1) {
    Get.toNamed('/about');
  } else if (index == 2) {
    Get.toNamed('/profile');
  } else {
    Get.toNamed('/');
  }
}

List<BottomNavyBarItem> items() {
  return [
    navitem("Home", Icons.home, Colors.amber),
    navitem("About", Icons.info, Colors.black),
    navitem("Profile", Icons.account_circle, Colors.blueAccent)
  ];
}

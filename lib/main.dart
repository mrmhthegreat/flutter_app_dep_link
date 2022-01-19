import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'aboust.dart';
import 'deepview.dart';
import 'profile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAHsR_n_z7K0jgAM9ZboV2Z7iTNXFdXcm4',
        appId: '1:571090020634:android:4c954423cf79ce68f9a4a3',
        messagingSenderId: '571090020634',
        projectId: 'deeplink-7f39b',
      ),
    );
  } else {
    // iOS requires that there is a GoogleService-Info.plist otherwise getInitialLink & getDynamicLink will not work correctly.
    // iOS also requires you run in release mode to test dynamic links ("flutter run --release").
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/about': (context) => const Abouts(),
        '/profile': (context) => const Myprofile(),
      },
      home: const deeplinkview(),
    );
  }

  Future<void> initDynamicLinks() async {
    dynamicLinks.onLink.listen((dynamicLinkData) {
      if (dynamicLinkData.link.hasQuery) {
        Get.toNamed(dynamicLinkData.link.queryParameters.values.first);
      }
    }).onError((error) {
      print(error.message);
    });
  }
}

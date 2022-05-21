import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vrl/routes.dart';
import 'package:vrl/views/initialpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      title: 'veritas',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Color(0xFFb71c1c),
        scaffoldBackgroundColor: Color(0xFFE6E6E6),
      ),
      home: InitialPage(),
      getPages: Routes.getXRoutes(),
    );
  }
}

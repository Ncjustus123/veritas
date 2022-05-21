

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vrl/views/welcome.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(() => WelcomePage());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 320.0,right: 50,left: 50,bottom: 50),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'images/fx.png',
                 width: MediaQuery.of(context).size.width * 0.63,
              ),
              //Text("Welcome",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}

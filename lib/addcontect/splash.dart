import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),() {
      Navigator.pushReplacementNamed(context, 'contact');
    },);
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Splash",style: TextStyle(fontSize: 40,color: Colors.cyanAccent))),
              SizedBox(height: 20),
              Center(child: FlutterLogo(size: 100 )),
            ],
          ),
        ),
      ),
    );
  }
}

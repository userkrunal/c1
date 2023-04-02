import 'package:contect/addcontect/add_contect.dart';
import 'package:contect/addcontect/splash.dart';
import 'package:contect/contect/contect_screen.dart';
import 'package:contect/contect/ontap.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) =>Splash_Screen(),
        "contact":(context) =>Contect_Home_Screen(),
        "ontap":(context) => On_Tap(),
        "add":(context) => Add_Contect(),

      },

    ),
  );
}
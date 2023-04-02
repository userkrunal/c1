import 'package:flutter/material.dart';
class On_Tap extends StatefulWidget {
  const On_Tap({Key? key}) : super(key: key);

  @override
  State<On_Tap> createState() => _On_TapState();
}

class _On_TapState extends State<On_Tap> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Text(""),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Them_Screen extends StatefulWidget {
  const Them_Screen({Key? key}) : super(key: key);

  @override
  State<Them_Screen> createState() => _Them_ScreenState();
}

class _Them_ScreenState extends State<Them_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hello World"),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Krunal",style: Theme.of(context).textTheme.titleLarge),
              Text("Krunal",style: Theme.of(context).textTheme.titleMedium),
              Text("Krunal",style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        )
    );
  }
}

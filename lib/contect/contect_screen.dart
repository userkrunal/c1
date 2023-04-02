import 'dart:async';
import 'dart:io';

import 'package:contect/model/contect_model.dart';
import 'package:flutter/material.dart';

List contectList=[
  ContectModel(name: "Vivek",phone: "2324565678"),
  ContectModel(name: "Dixit",phone: "8899553377"),
  ContectModel(name: "Vaidik",phone: "3312457689"),
  ContectModel(name: "Bhargav",phone: "7788664412"),
  ContectModel(name: "Yash",phone: "7733189654"),
];

class Contect_Home_Screen extends StatefulWidget {
  const Contect_Home_Screen({Key? key}) : super(key: key);

  @override
  State<Contect_Home_Screen> createState() => _Contect_Home_ScreenState();
}

class _Contect_Home_ScreenState extends State<Contect_Home_Screen> {

  var txtKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Form(
      key: txtKey,
      child: WillPopScope(
        onWillPop: back,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/bak1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text("Contacts",style: TextStyle(fontSize: 25,color: Colors.white)),
                centerTitle: true,
                actions: [
                  Icon(Icons.add,color: Colors.white),
                  SizedBox(width: 10),
                  Icon(Icons.search,color: Colors.white),
                  SizedBox(width: 10),
                  Icon(Icons.menu,color: Colors.white),
                  SizedBox(width: 10),
                ],
              ),
              body: Scrollbar(
                child: ListView.builder(
                     itemBuilder: (context, index) => myWidget(contectList[index]),itemCount: contectList.length
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
               Navigator.pushNamed(context, 'add').then((value) {
                 setState(() {
                });
               },);
               },
                backgroundColor: Colors.indigo,
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void showExitDilog()
  {
    showDialog(barrierDismissible: false,context: context, builder: (context) {
      return AlertDialog(
        title: Text("Are You Sure To Exit ?"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {
              exit(0);
            }, child: Text("Yes"),style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("No"),style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200),)
          ],
        ),
      );
    },);
  }
  Future<bool> back()
  async{
    showExitDilog();
    return await false;
  }

}
Widget myWidget(ContectModel cm)
{
  return ListTile(
    isThreeLine: true,
    title: Text("${cm.name}",style: TextStyle(fontSize: 20,color: Colors.white)),
    autofocus: true,
    tileColor: Colors.black26,
    subtitle: Text("${cm.phone}",style: TextStyle(fontSize: 10,color: Colors.white)),
    leading: Icon(Icons.person,size: 30,color: Colors.white),
    trailing: Icon(Icons.phone,color: Colors.white),
  );
}

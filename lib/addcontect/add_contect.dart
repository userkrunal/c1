import 'package:contect/contect/contect_screen.dart';
import 'package:contect/model/contect_model.dart';
import 'package:flutter/material.dart';

class Add_Contect extends StatefulWidget {
  const Add_Contect({Key? key}) : super(key: key);

  @override
  State<Add_Contect> createState() => _Add_ContectState();
}
TextEditingController txtName=TextEditingController();
TextEditingController txtContact=TextEditingController();

class _Add_ContectState extends State<Add_Contect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: Text("Add contact"),
            centerTitle: true,
            backgroundColor: Colors.cyanAccent,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/user.png"),
                    radius: 80,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: txtName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purple.shade50,width: 2)
                      ),
                      label: Text("Name"),
                      hintText: "Name",
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.purple.shade400,width: 1)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: txtContact,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purple.shade50,width: 2)
                      ),
                      label: Text("Contact No"),
                      hintText: "Number",
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.purple.shade400,width: 1)),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {
                    String name=txtName.text;
                    String contect=txtContact.text;
                    ContectModel contectModel=ContectModel(name: name,phone: contect);
                    contectList.add(contectModel);
                    Navigator.pop(context);
                  }, child: Text("Submit"),style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200)),
                ],
              ),
            ),
          ),
        )
    );
  }
}

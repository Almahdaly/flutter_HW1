import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/yasserbutton.dart';
import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/yassertextfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Yasser button & text")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Yassertextfield(hint: "Enter your name", texticon: Icons.person, texttype: TextInputType.name),
              Yassertextfield(hint: "Enter your email", texticon: Icons.email, texttype: TextInputType.emailAddress),
              Yassertextfield(hint: "Enter your phone number", texticon: Icons.phone, texttype: TextInputType.phone),
              Yassertextfield(hint: "Enter your password", texticon: Icons.password, texttype: TextInputType.visiblePassword),
              Yasserbutton(btext:"Submit", buttoncolor: const Color.fromARGB(255, 0, 59, 108), textcolor: Colors.white,),
            ],
          ),
        ),
      )
    );
  }
}

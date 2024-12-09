import 'package:flutter/material.dart';

class Yassertextfield extends StatelessWidget {
  final String hint;
  final IconData texticon;
  final TextInputType texttype;
  final TextEditingController controller;
  const Yassertextfield({super.key, required this.hint, required this.texticon, required this.texttype, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: 400,
        child: TextField(
        controller: controller,
        keyboardType: texttype,
        decoration: InputDecoration(
          labelText: hint,
          icon: Icon(texticon),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      ),
               ),
      );
  }
}
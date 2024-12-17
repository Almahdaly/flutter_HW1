import 'package:flutter/material.dart';

class Yasserbutton extends StatelessWidget {
  final String btext;
  final Color buttoncolor;
  final Color textcolor;
  final VoidCallback onPressed;
  const Yasserbutton({super.key, required this.btext, required this.buttoncolor, required this.textcolor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: 200,
        height: 50,
        child: MaterialButton(
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color:buttoncolor,
                onPressed: onPressed,
                child: 
               Text(btext,style: TextStyle(color: textcolor),
               ),
               ),
      ),
               ),
      );
  }
}
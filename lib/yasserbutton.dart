import 'package:flutter/material.dart';

class Yasserbutton extends StatelessWidget {
  final String btext;
  final Color buttoncolor;
  final Color textcolor;
  const Yasserbutton({super.key, required this.btext, required this.buttoncolor, required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: 200,
        height: 50,
        child: MaterialButton(
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color:buttoncolor,
                onPressed: (){

              },child: 
               Text(btext,style: TextStyle(color: textcolor),
               ),
               ),
      ),
               ),
      );
  }
}
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
   const StyledText(this.out,{super.key,required this .fontSiz});
   final String out;
   final double fontSiz;

  @override
  Widget build( context) {
    return Text(out,
      style:  TextStyle(color:Colors.white,
        fontWeight: FontWeight.w300,
        fontSize:fontSiz ),
    );
  }

}
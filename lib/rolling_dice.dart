import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';
import 'dart:math';
class RollingDice extends StatefulWidget{
  const RollingDice({super.key});

  @override
  State<RollingDice> createState(){
    return _RollingDice();
  }
}
class _RollingDice extends State<RollingDice>{

var current=2;

  void rolling() {

    setState(() {
      current=Random().nextInt(6)+1;
    }
    );

  }
  @override
  Widget build(context){
    return Container(
      decoration:   const BoxDecoration(
          gradient:LinearGradient(
              colors: [Color.fromARGB(255, 35, 210, 210), Colors.deepOrangeAccent]
          ) ),
      child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/dice-$current.png",width: 200,),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: rolling,
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(left: 5,right: 5),
                    backgroundColor: Colors.greenAccent,
                    shadowColor: Colors.brown,
                    elevation: 3,
                    side: const BorderSide(width: 1,color: Colors.greenAccent),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    fixedSize: const Size(150, 50)
                  ),
                  child: const StyledText("click me",fontSiz: 25,)
              )
              //hello
            ],
          )
      ),
    );
  }
}
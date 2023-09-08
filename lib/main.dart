import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';
import 'package:roll_dice/rolling_dice.dart';
void main(){
  runApp(    const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
    body: Center(
        child: RollingDice(),
    )
  ),
  ));
}

//making my own container class for the static image in the app
class MyContainer extends StatelessWidget{
   MyContainer({super.key});
   var img="assets/images/dice-1.png";
void rolling(){
   img='assets/images/dice-2.png';

}
  @override
  Widget build( context) {
    return Container(
      decoration:   const BoxDecoration(
          gradient:LinearGradient(
              colors: [Color.fromARGB(255, 35, 210, 210), Colors.deepOrangeAccent]
          ) ),
      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img,width: 200,),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: rolling,
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(6),
                backgroundColor: Colors.greenAccent,
                ),
                child: const StyledText("click me",fontSiz: 25,)
            )
          ],
        )
      ),
    );
  }
}

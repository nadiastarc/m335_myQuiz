import 'package:flutter/material.dart';

class Instruction extends StatefulWidget {
  const Instruction({super.key});

  @override
  State<Instruction> createState() => _Instruction();
}

class _Instruction extends State<Instruction> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/studyfy2.jpg"), fit: BoxFit.fitHeight)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Spacer(),
            Container(
              width: 300,
              height: 200,
              color: Colors.yellow,
              child: const Center(
                  child: Text(
                      'How to play a quiz?\n \nGo back to the startpage and select : start Quiz \n  and PLAY!')),
            ),
            Spacer(),
            Container(
              width: 300,
              height: 200,
              color: Colors.yellow,
              child: const Center(
                  child: Text(
                      'How to create a quiz? \n \n This function is not available')),
            ),
            Spacer(),
          ]),
        ),
      ),
    ));
  }
}

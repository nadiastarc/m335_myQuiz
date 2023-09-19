import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myquiz/main.dart';
import 'package:myquiz/pages/instructions.dart';
import 'package:myquiz/pages/quizPage.dart';
import 'package:myquiz/style/style.dart';

PreferredSizeWidget myAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget answerCard(String answer, BuildContext context, {bool? check}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: (check == null)
          ? Colors.white70
          : (check)
              ? Colors.green
              : Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            answer,
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget bigButton(
    BuildContext context, Widget Function() createPage, String name) {
  return Container(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.1),
          backgroundColor: Colors.white60,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => createPage()));
        },
        child: Text(
          name,
          style: headerTextStyle(),
        )),
  );
}

Widget roundButton(BuildContext context) {
  return Container(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Instruction()));
      },
      child: Container(
        height: 75.0,
        width: 125.0,
        decoration:
            const BoxDecoration(color: Colors.white60, shape: BoxShape.circle),
        alignment: Alignment.center,
        child: Text(
          "?",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 32.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget createCardTopic(String title, String helper) {
  return Container(
    child: TextFormField(
      cursorColor: Colors.cyan,
      maxLength: 50,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
          color: Color(0xFF6200EE),
        ),
        helperText: helper,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6200EE)),
        ),
      ),
    ),
  );
}

Widget createCard() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 1.0,
    color: Colors.grey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Term',
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
            labelText: 'Definition',
          ),
        ),
      ],
    ),
  );
}

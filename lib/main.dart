import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Settle Disputes'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 5;
  int rightdice =2;

  void changeNumber(){
    setState(() {
      leftdice = Random().nextInt(6)+1;
      rightdice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child:
          TextButton(onPressed: () {
           changeNumber();
          },
              child: Image.asset('images/dice$leftdice.png')),
          ),
          Expanded(child:
          TextButton(onPressed: (){
            changeNumber();
          },
              child: Image.asset('images/dice$rightdice.png')),
          ),
        ],
      ),

    );
  }
}



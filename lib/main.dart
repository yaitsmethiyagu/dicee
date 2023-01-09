import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
int LefImageNumber = 1;
int RightImageNumber = 2;

class DicePage extends StatefulWidget {
  @override

  State<DicePage> createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  @override

  void changeDiceNumber () {
    LefImageNumber = Random().nextInt(6) + 1;
    RightImageNumber = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {

    return Container(
      child: Center(
          child: Row(
            children: [
              Expanded (child: TextButton(child: Image.asset('images/dice${LefImageNumber}.png'),
                  onPressed: () {
                    setState(() {
                      changeDiceNumber();
                    });
                    }),),
              Expanded (child: TextButton(child: Image.asset('images/dice${RightImageNumber}.png'),
                  onPressed: (){
                    setState(() {
                      changeDiceNumber();
                    });
                    print("presees left ${RightImageNumber} ");
                    }),),
            ],
          )),
    );
  }
}



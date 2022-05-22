// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  const DiceScreen({ Key? key }) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
    int leftdicenumber = 1;
    int rightdicenumber = 1;
    void Playdice () {
      setState(() {
        leftdicenumber = Random().nextInt(6) + 1;
         if (leftdicenumber == 6 ) {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: "You win!",
        );
      }
      });
    }
    void Playdice1() {
      setState(() {
        rightdicenumber = Random().nextInt(6) + 1;
        if ( rightdicenumber ==6 ) {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: "You win!",
        );
      }
      });
    }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.all(16.0),
              onPressed: () {
                 Playdice();
              },
             child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          Expanded(
              child: FlatButton(
                padding: const EdgeInsets.all(16.0),
                onPressed: () {
                 Playdice1();
                },
                child: Image.asset('images/dice$rightdicenumber.png'), 
                ),
              ),
        ],
      ),
    );
  }
}


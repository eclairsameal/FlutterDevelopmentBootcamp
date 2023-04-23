import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  // var leftDiceNumber = 1;  // 熱載入不會重新加載這裡
  // var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {  // 熱載入只會在這個區間內
    var leftDiceNumber = 3;
    var rightDiceNumber = 4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            // child: Image(
            //   image: AssetImage('images/dice1.png')
            // ),
            child: FlatButton(
              onPressed: (){
                print("Left button got pressed.");
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            // child: Image(
            //     image: AssetImage('images/dice1.png')
            // ),
            child: FlatButton(
              onPressed: (){
                print("Right button got pressed.");
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
void main()
{
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title:Center(
              child: Text(
                'Dicee',
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body:DicePage(),
        ),
      ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ld=1;
  int rd=2;

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                   ld=Random().nextInt(6)+1;
                  });
                },
                child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
                    child: Image.asset('images/$ld.png'))
            ),
          ),

          Expanded(
            child: FlatButton(
                onPressed: (){
                setState(() {
                  rd=Random().nextInt(6)+1;
                });
                },
                
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset('images/$rd.png'))
            ),
          ),

        ],

      ),
    );
  }
}




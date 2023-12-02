import 'package:flutter/material.dart';
import 'Q1.dart';
import 'Q2.dart';
import 'Q3.dart';
import 'Q4.dart';

class output extends StatelessWidget {

  output({required this.stateText, required this.suggestionText});
final String stateText;
final String suggestionText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4DD0E1),
      appBar: AppBar(
        backgroundColor: Color(0xFF00BCD4),
      ),
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height:150,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text('Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),//'Your Result'
            Expanded(
              flex: 5,
                child: Container(
                  width:500,

                  decoration: BoxDecoration(
                      color: Color(0xFF00BCD4),
                      borderRadius: BorderRadius.circular(10.0),

                ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Mental State',
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,

                      ),
                      ),

                     Text(stateText,
                     style: TextStyle(
                       color: Colors.white60,

                       fontSize: 40.0,
                       fontWeight: FontWeight.bold,

                     ),
                     ),
                      Text(suggestionText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),)
                    ],
                  ),
            ),
            ),//OUTPUT

          ],
        ),
      ),
    );
  }
}


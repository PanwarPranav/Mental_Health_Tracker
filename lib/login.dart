import 'package:flutter/material.dart';
import 'Q1.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
          home:const Scaffold(
            body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    CircleAvatar(
                      radius:50.0,
                      backgroundImage: AssetImage('images/OIP.jpeg'),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                              children:<Widget>[
                                Icon(Icons.mail_outline,
                                ),
                                SizedBox(width:20.0),
                                Text('Gmail',
                                  style: TextStyle(
                                    fontFamily: 'Source Code Pro',
                                    fontSize: 20.0,
                                  ),)
                              ]
                          )
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                              children:<Widget>[
                                Icon(Icons.password_rounded,
                                ),
                                SizedBox(width:20.0),
                                Text('Password',
                                  style: TextStyle(
                                    fontFamily: 'Source Code Pro',
                                    fontSize: 20.0,
                                  ),)
                              ]
                          )
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child:Text('NEXT',
                            style: TextStyle(
                                fontSize: 20.0
                            ),
                          ),
                      ),
                    ),

                  ],
              ),
            ),
          ),
    );
  }
}


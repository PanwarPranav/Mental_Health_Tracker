import 'package:flutter/material.dart';

class login_1 extends StatelessWidget {
  const login_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
      ),
      body: SafeArea(
        child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back3.jpg'),
                  fit: BoxFit.cover,

                )
              ),
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/OIP.jpeg'),
              ),
              Container(
                width: 350.0,
                height: 55.0,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(10.0)
                ),
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
                              fontWeight: FontWeight.w900,
                            ),)
                        ]
                    )
                ),
              ),//email
              Container(
                width: 350.0,
                height: 55.0,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(10.0)
                ),
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
                              fontWeight: FontWeight.w900,
                            ),)
                        ]
                    )
                ),
              ),//password
              Container(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      child:Text('Log In',
                        style: TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                      onPressed: (){
                      Navigator.pushNamed(context, '/start');
                          }
                            ),
                          ),
                            ),//button
                       ],
                      ),

                    ),


                  )
              );

  }
}

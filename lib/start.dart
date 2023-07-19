import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Take A Test To Track Your Mental Health',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Lilita One',
                          color: Colors.white70,

                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:200.0,height: 500,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: Text("Test",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Titan',
                            ),
                          ),
                          onPressed: (){
                          Navigator.pushNamed(context, '/Q1');
                          },
                        ),
                      ),
                    ),
                  ],
            ),
          ),
        ),
      ),
    );
  }
}

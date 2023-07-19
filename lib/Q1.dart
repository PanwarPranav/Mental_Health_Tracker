import 'package:flutter/material.dart';
import 'output.dart';
import 'Q2.dart';

class Q1 extends StatefulWidget {


  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  @override
  int people = 5;

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10.0)
                  ),//reusable card
                  child: Padding(
                    padding:  EdgeInsets.all(15.0),
                    child: Text('How many people did u meet today',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Lilita One',
                        color: Colors.white70,
                      ),
                      ),
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Choose",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Lilita One',
                    color: Colors.white70,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          people.toString(),

                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,

                          ),

                        )
                      ],
                    ),
                    Slider(
                      value: people.toDouble(),
                      min: 0.0  ,
                      max: 10.0,
                      activeColor: Colors.lightBlue,
                      inactiveColor: Colors.white54,
                      onChanged: (double newVal){
                        setState(() {
                          people=newVal.toInt();
                        });

                      },
                    )
                  ],
                ),
              ),
              /* Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Slider Value: $_sliderValue',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Slider(
                      value: _sliderValue.toDouble(),
                      min: 0.0,
                      max: 100.0,
                      divisions: 100,
                      onChanged: (newValue) {
                        setState(() {
                          _sliderValue = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),*/

              Center(
                child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        child:Text('NEXT',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/Q2');
                        },
                      ),


                    )

                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'output.dart';
import 'Q2.dart';
import 'Brain.dart';

class Q2  extends StatefulWidget {


  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  @override
  int happy = 5;

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
                    padding: const EdgeInsets.all(15.0),
                    child: Text('How happy do u feel today',
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
                        color: Colors.white70,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          happy.toString(),

                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,

                          ),

                        )
                      ],
                    ),
                    Slider(
                      value: happy.toDouble(),
                      min: 0.0  ,
                      max: 10.0,
                      activeColor: Colors.lightBlue,
                      inactiveColor: Colors.white54,
                      onChanged: (double newVal){
                        setState(() {
                          happy=newVal.toInt();
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
                          Navigator.pushNamed(context, '/Q3');
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

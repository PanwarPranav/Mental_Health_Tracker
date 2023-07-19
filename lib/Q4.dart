import 'package:flutter/material.dart';
import 'output.dart';
import 'Q2.dart';

class Q4  extends StatefulWidget {


  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  @override
  int stress = 5;

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
                    child: Text('How stressed do u feel Today',
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

                ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          stress.toString(),

                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,

                          ),

                        )
                      ],
                    ),
                    Slider(
                      value: stress.toDouble(),
                      min: 0.0  ,
                      max: 10.0,
                      activeColor: Colors.lightBlue,
                      inactiveColor: Colors.white54,
                      onChanged: (double newVal){
                        setState(() {
                          stress=newVal.toInt();
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
                          Navigator.pushNamed(context, '/out');
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

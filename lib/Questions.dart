import 'package:flutter/material.dart';
import 'package:huhu/output.dart';
import 'Brain.dart';

class questions extends StatefulWidget {
  @override
  State<questions> createState() => questionsState();
}

class questionsState extends State<questions> {
  int people = 5;
  int happy = 5;
  int productive = 5;
  int stress = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white10,
        appBar: AppBar(
        backgroundColor: Colors.white24,
    ),
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/back4.jpg'),
              fit: BoxFit.cover,

            )
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10.0)
              ),//reusable card
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text('How many people did u meet today ?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Lilita One',
                    color: Colors.black,
                  ),
                ),
              ),
            ),//Q1
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(

                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                 /* Text("Choose",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Lilita One',
                      color: Colors.white70,),
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        people.toString(),

                        style: TextStyle(
                          fontSize: 25.0,
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
            ),//SLIDER1
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),//reusable card
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text('How happy do u feel today?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Lilita One',
                    color: Colors.black87,
                  ),
                ),
              ),
            ),//Q2
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(

                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                 /* Text("Choose",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Lilita One',
                      color: Colors.white70,),
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        happy.toString(),

                        style: TextStyle(
                          fontSize: 25.0,
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
            ),//SLIDER2
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),//reusable card
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text('How productive do u feel today ?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Lilita One',
                    color: Colors.black87,
                  ),
                ),
              ),
            ),//Q3
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(

                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  /*Text("Choose",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Lilita One',
                      color: Colors.white70,),
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        productive.toString(),

                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,

                        ),

                      )
                    ],
                  ),
                  Slider(
                    value: productive.toDouble(),
                    min: 0.0  ,
                    max: 10.0,
                    activeColor: Colors.lightBlue,
                    inactiveColor: Colors.white54,
                    onChanged: (double newVal){
                      setState(() {
                        productive=newVal.toInt();

                      }
                      );

                    },
                  )
                ],
              ),
            ),//SLIDER3
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),//reusable card
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text('How stressed do u feel today ?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Lilita One',
                    color: Colors.black87,
                  ),
                ),
              ),
            ),//Q4
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(

                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
            ),
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  /*Text("Choose",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Lilita One',
                      color: Colors.white70,),
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        stress.toString(),

                        style: TextStyle(
                          fontSize: 25.0,
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
            ),//SLIDER4
            SizedBox(height: 20.0,),
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
                        Cal obj = Cal(q1:people ,q2:happy ,q3:productive ,q4:stress );
                        obj.calculte();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => output(
                                stateText: obj.getmentalstatus(),
                                suggestionText: obj.getsuggestions(),
                              ),
                            ),
                        );
                      },
                    ),


                  )

              ),
            ),//NEXT_BUTTON
          ],
        ),
      ),
    ),

    );
  }
}

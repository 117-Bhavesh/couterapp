import 'package:flutter/material.dart';

//stl never changes
//stf changes and updates the value on the app and displays it

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //variable
  int _counter = 0;

  //method (a method to increment the counter)
  void _incrementCounter() {
    //anytime wwe change the value of something and we want it to be reflected
    //in our app we put it inside setState(() {});
    //setState rebuilds the widget
    setState(() {
      _counter++;
    });
    //if you click the button the actual value will change but without setState
    // the update wont show ont he widget ont he screen
  }

  //UI


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text(
              "You have pushed the button this many times:"
            ),

            //counter value
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            
            //button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            ),
          ],
        ),
      ),
    );
  }
}

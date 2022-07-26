import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

// MyApp class
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


// HomePage Class
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int num1 = 4;
  int num2 = 3;
  void setNumbers()
  {
    num1=Random().nextInt(9)+1;
    num2=Random().nextInt(9)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          textAlign: TextAlign.center,
          'تطابق الصور',
        ),
        backgroundColor: Colors.indigo[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            (num1 == num2) ? "مبروووك لقد نجحت" : "حاول مرة اخرى",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Image.asset('Images/image-$num1.png'),
                    onPressed: () {
                      setState(() {
                        setNumbers();
                        //num1 = Random().nextInt(9) + 1;
                        //num2 = Random().nextInt(9) + 1;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('Images/image-$num2.png'),
                    onPressed: () {
                      setState(() {
                        setNumbers();
                        //num1 = Random().nextInt(9) + 1;
                        //num2 = Random().nextInt(9) + 1;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

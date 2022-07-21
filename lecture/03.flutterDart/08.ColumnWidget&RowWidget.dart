import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        // child: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 20,
              // )
            ],
          // ),
        ),
      ),
    );
  }
}

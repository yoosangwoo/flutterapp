import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
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
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (){
        //     print('menu button is clicked');
        //   },
        // ),
        actions: [
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){
            print('Shopping cart button is clicked');
          },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/bbanto.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('BBANTO'),
              accountEmail: Text('bbanto@gmail.com'),
              onDetailsPressed: () {
                print('arrow is cilcked');
              } ,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}


import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Paytm"),
        ),
        bottomNavigationBar: buildNavigator(),
      ),
    );
  }

  Widget buildNavigator() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,), title: Text('Home',style: TextStyle(color: Colors.blue),)),
        BottomNavigationBarItem(icon: Icon(Icons.local_mall,color: Colors.blue), title: Text('Mall',style: TextStyle(color: Colors.blue),)),
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo,color: Colors.blue), title: Text('Scan',style: TextStyle(color: Colors.blue),)),
        BottomNavigationBarItem(icon: Icon(Icons.attach_money,color: Colors.blue), title: Text('Bank',style: TextStyle(color: Colors.blue),)),
        BottomNavigationBarItem(icon: Icon(Icons.message,color: Colors.blue,), title: Text('Inbox',style: TextStyle(color: Colors.blue),)),
      ],

    );
  }
}

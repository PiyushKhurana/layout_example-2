import 'package:flutter/material.dart';
import './icons/custom_icons.dart';

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
        iconBuilder(Icons.home, 'Home'),
        iconBuilder(Icons.local_mall, 'Mall'),
        iconBuilder(Custom.qr_code, 'Scan'),
        iconBuilder(Icons.attach_money, 'Bank'),
        iconBuilder(Icons.message, 'Inbox')
      ],
      type: BottomNavigationBarType.fixed,
    );
  }

  BottomNavigationBarItem iconBuilder(IconData icon, String text) {
    return new BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.blue,
      ),
      title: Text(
        '$text',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

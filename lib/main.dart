import 'package:flutter/material.dart';
import 'package:tabs/login.dart';
import 'package:tabs/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login/SignUp',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Options'),
            backgroundColor: Colors.amber,
            bottom: const TabBar(
              indicator: BoxDecoration(color: Colors.red),
              tabs: [
                Tab(
                  text: 'LOG IN',
                ),
                Tab(
                  text: 'SIGN UP',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [LoginPage(), SignupPage()]),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _radioButton = 'Admin';
  @override
  Widget build(BuildContext context) {
      // ignore: prefer_const_constructors
      return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'ShowCase App',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  activeColor: Colors.deepPurple,
                  groupValue: _radioButton,
                  onChanged: (String? value) {},
                  value: 'Admin',
                ),
                const Text('Admin'),
                Radio(
                  activeColor: Colors.deepPurple,
                  groupValue: _radioButton,
                  onChanged: (String? value) {
                    setState(() {
                      _radioButton = 'Project Owner';
                    });
                  },
                  value: 'Project Owner',
                ),
                const Text('Project Owner')
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person), hintText: 'User Name'),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email), hintText: 'Email'),
                  ),
                   const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock), hintText: 'Password'),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 35),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    child: const Text('LOG IN'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(height: 30),
                  Text("Or Connect With"),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blue[900]),
                        child: const Text('FACEBOOK'),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style:
                            ElevatedButton.styleFrom(primary: Colors.red[700]),
                        child: const Text('GOOGLE'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:combit_prep/Signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Center(child: Text('Login Screen')),
            TextField(decoration: InputDecoration(labelText: 'Username')),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                // Navigate to signup screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text('Already have an Account? Signup'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle login logic
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

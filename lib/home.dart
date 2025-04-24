import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final emailText = TextEditingController();
  final passText = TextEditingController();

  final String email = 'abdikenea@gmail.com';
  final String pass = 'abdi123';

  void checkUser() {
    if (emailText.text == email && passText.text == pass) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('its a valid username')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('invalid credentials')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailText,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passText,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: checkUser, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}

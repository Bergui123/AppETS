import 'package:flutter/material.dart'; // Import Firebase Core
import 'accountcreation/accountcreation.dart';  // Correct relative import

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Firebase initialization
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Sign-in logic goes here
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Navigate to the account creation page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountCreationPage()),
                );
              },
              child: const Text('Create a New Account'),
            ),
          ],
        ),
      ),
    );
  }
}

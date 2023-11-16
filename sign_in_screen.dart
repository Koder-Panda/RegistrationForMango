import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white,
          //height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo at the center
              Container(
                child: Image.asset('LOGO IMAGE'),
                height: 100.0,
                width: 100.0,
              ),

              // Container for Buttons
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    // Sign in with Google button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Implement Google Sign-In logic
                      },
                      icon:
                          Image.asset('GOOGLE LOGO', height: 24.0, width: 24.0),
                      label: Text('Sign in with Google'),
                    ),

                    // Sign in with Apple button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Implement Apple Sign-In logic
                      },
                      icon:
                          Image.asset('APPLE LOGO', height: 24.0, width: 24.0),
                      label: Text('Sign in with Apple'),
                    ),

                    // "Continue with" text
                    Text(
                      'Continue with',
                      style: TextStyle(color: Colors.grey),
                    ),

                    // Email Address input
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                      ),
                    ),

                    // Password input
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    ),

                    // Forgot Password option
                    TextButton(
                      onPressed: () {
                        // Implement Forgot Password logic
                      },
                      child: Text('Forgot Password?'),
                    ),

                    // Continue button
                    ElevatedButton(
                      onPressed: () {
                        // Goto Next Screen
                      },
                      child: Text('Continue'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

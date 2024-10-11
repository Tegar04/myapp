import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/gestures.dart'; // Add this import for TapGestureRecognizer

class LoginView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/gambar2.png',
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),

                  // Form container
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9), // Increased opacity
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Email input
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Password input
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Login button
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/order');
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black, // Black button
                            minimumSize: Size(250, 50), // Button size
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // "Forgot Password" link (optional addition)
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/email');
                      // Add navigation for forgot password
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // "Sign Up" link with proper styling
                  RichText(
                    text: TextSpan(
                      text: "Don’t have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue, // Blue for "Sign Up"
                            decoration: TextDecoration.underline,
                          ),
                          // Navigation to sign-up screen
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed('/signup');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

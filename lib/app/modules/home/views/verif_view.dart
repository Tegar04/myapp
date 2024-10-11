import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Verification Email Screen
class VerifView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gambar2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'VERIFICATION EMAIL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'We\'ve sent the code to your email. Check it and enter the code below:',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter PIN',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('ENTER'),
                    onPressed: () {
                      Get.toNamed('/sukses');
                    },
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

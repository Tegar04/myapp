import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/controllers/home_controller.dart';

class LoginasView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/gambar1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo at the top
                Image.asset('assets/images/logo2.png', height: 250),
                SizedBox(height: 5),
                Text(
                  'Login As',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // Login buttons for Admin and Guest/Member
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/login');
                    // Navigate to admin login
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 50),
                    backgroundColor: Colors.white, // Set button color
                  ),
                  child: Text('Admin'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/login');

                    // Navigate to guest/member login
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 50),
                    backgroundColor: Colors.white, // Set button color
                  ),
                  child: Text('Guest/Member'),
                ),
                SizedBox(height: 40),
                // Text below the buttons
                Text(
                  'SM Vapestore Malang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to our cozy vaping corner, where every vaper has their own respect to other vapers.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/login');
                    // Go back to login
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 50),
                    backgroundColor: Colors.white, // Set button color
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

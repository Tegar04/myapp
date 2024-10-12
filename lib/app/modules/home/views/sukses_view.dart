import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuksesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/gambar2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 100),
                SizedBox(height: 20),
                Text(
                  'YOU ARE ALL DONE!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('ENTER'),
                  onPressed: () {
                    Get.toNamed('/loginas');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

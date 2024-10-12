import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class NotificationView extends GetView<HomeController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('notification view'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'NOTIFICATION',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 10),
            //frame garis lurus
            Container(
                width: 1000,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),

            Container(
              width: 800,
              height: 400,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 2,
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[850],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Get.toNamed('/home');
                // Home button action
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                Get.toNamed('/wishlist');
                // Wishlist button action
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
              onPressed: () {
                Get.toNamed('/cart');
                // Shopping button action
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {
                Get.toNamed('/notification');
                // Notification button action
              },
            ),
          ],
        ),
      ),
    );
  }
}

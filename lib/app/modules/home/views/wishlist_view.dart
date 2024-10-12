import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WishList'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[850],
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Wishlist Detail'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey[800], // text color
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                WishlistItem(),
                WishlistItem(),
                WishlistItem(),
              ],
            ),
          ),
        ],
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

class WishlistItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (bool? value) {},
          ),
          Image.asset(
            'assets/images/hotcig_r234.jpg',
            width: 50,
            height: 50,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Hotcig R234\nVAPEBOSS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {
              // Add to cart action
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: WishlistView(),
  ));
}

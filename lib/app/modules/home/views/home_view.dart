import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Row(
                    children: [
                      Text('Bilzen, Tanjungbalai',
                          style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Vape',
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.tune, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Promo Banner
            // Updated Promo Banner
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 150, // Adjust height as needed
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/promo.jpg'), // Add your promo image here
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text('Promo',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      'Buy one get FREE Liquid',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            // Category Buttons
            // Category Buttons
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Mengatur scroll secara horizontal
                child: Row(
                  children: ['All Vape', 'Liquid', 'Accesoris', 'Atomize']
                      .asMap()
                      .entries
                      .map((entry) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          String routeName;
                          switch (entry.key) {
                            case 1: // Liquid
                              routeName = '/liquid'; // Rute Liquid
                              break;
                            case 2: // Accesoris
                              routeName = '/accessories'; // Rute Accesoris
                              break;
                            case 3: // Atomize
                              routeName = '/atomizer'; // Rute Atomizers
                              break;
                            default:
                              routeName = '/home2'; // Kembali ke halaman default
                          }
                          Get.toNamed(routeName); // Navigasi ke rute yang sesuai
                        },
                        child: Text(entry.value),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: entry.key == 0 ? Colors.white : Colors.black,
                          backgroundColor: entry.key == 0 ? Colors.orange : Colors.grey[300],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),


            // Product Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                childAspectRatio: 0.8,
                children: [
                  _buildProductCard(
                    productName: 'Hotcig R234',
                    brandName: 'VAPEBOSS',
                    productPrice: 26.35,
                    productImage: 'assets/images/hotcig_r234.jpg',
                    productId: '1', // ID produk
                    description: 'Hotcig R234 adalah mod vape yang recommended...',
                  ),
                  _buildProductCard(
                    productName: 'TRML T200',
                    brandName: 'THERMAL X INVERSE',
                    productPrice: 29.34,
                    productImage: 'assets/images/trml_t200.jpg',
                    productId: '2', // ID produk
                    description: 'TRML T200 adalah produk...',                    
                  ),
                ],
              ),
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

  Widget _buildProductCard({
    required String productName,
    required String brandName,
    required double productPrice,
    required String productImage,
    required String productId, // Tambahkan ID produk
    required String description, // Tambahkan deskripsi
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(productImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(brandName, style: TextStyle(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$$productPrice',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke DetailView dengan data produk
                    Get.toNamed(
                      '/detail', 
                      arguments: {
                        'name': productName,
                        'type': 'Mod', // Misalnya
                        'price': productPrice,
                        'image': productImage,
                        'description': description,
                      },
                    );
                  },
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(40, 40),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}

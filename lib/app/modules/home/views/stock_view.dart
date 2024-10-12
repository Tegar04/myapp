import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class StockView extends GetView<OrderController> {
  const StockView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'Stock',
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Frame dalam pertama
                  InkWell(
                    onTap: () {
                      Get.toNamed('/stocklist');
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.remove_shopping_cart,
                                color: Colors.white), // Sesuaikan warna ikon
                            SizedBox(width: 8),
                            Text(
                              'Empty Stock',
                              style: TextStyle(
                                  color: Colors.white), // Sesuaikan warna teks
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Jarak antara frame dalam pertama dan kedua
                  SizedBox(height: 20),
                  // Frame dalam kedua

                  InkWell(
                    onTap: () {
                      Get.toNamed('/stocklist');
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 164, 72),
                        border: Border.all(
                          color: Color.fromARGB(255, 203, 164, 72),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.inventory,
                                color: Colors.white), // Sesuaikan warna ikon
                            SizedBox(width: 8),
                            Text(
                              'Sales Products',
                              style: TextStyle(
                                  color: Colors.white), // Sesuaikan warna teks
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            //frame baru dibawah frame luar
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
                    child: Text('back')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/order_controller.dart';

class AdminView extends GetView<OrderController> {
  const AdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADMIN'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Judul 'MEMBERS'
            Container(
              child: Text(
                'ADMIN MENU',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Garis lurus
            Container(
              width: 1000,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Frame besar untuk opsi Edit
            Container(
              width: 800,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Frame "Edit Member"
                  InkWell(
                    onTap: () {
                      Get.toNamed('/memberlist');
                    },
                    child: Container(
                      width: 400,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'Edit Member',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Frame "Edit Stock"
                  InkWell(
                    onTap: () {
                      Get.toNamed('/stock');
                    },
                    child: Container(
                      width: 400,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.inventory, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'Edit Stock',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Frame "Edit Promo"
                  InkWell(
                    onTap: () {
                      Get.toNamed('/discount');
                    },
                    child: Container(
                      width: 400,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.local_offer, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'Edit Promo',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Tombol kembali
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: Container(
                  width: 400,
                  height: 150,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman loginas menggunakan GetX
                        Get.toNamed('/loginas');
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50), // Ukuran minimal tombol
                      ),
                      child: Text('Back'),
                    ),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

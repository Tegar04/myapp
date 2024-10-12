import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class InputMView extends GetView<OrderController> {
  const InputMView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Members View'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'EDIT MEMBERS',
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
                  Text(
                    'Delete Member',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Frame dalam pertama
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Yes',
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
                      Get.back();
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'No',
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
                      Get.toNamed('/home');
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

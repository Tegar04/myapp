import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class MemberlistView extends GetView<OrderController> {
  const MemberlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('members list'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'MEMBERS LIST',
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
            ),

            SizedBox(
              height: 30,
            ),

            //frame baru dibawah frame luar
            InkWell(
              onTap: () {
                Get.toNamed('/input');
              },
              child: Container(
                width: 200,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.person,
                          color: Colors.black), // Sesuaikan warna ikon
                      SizedBox(width: 8),
                      Text(
                        'EDIT MEMBERS >',
                        style: TextStyle(
                            color: Colors.black), // Sesuaikan warna teks
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            //frame baru dibawah frame luar
            Container(
              width: 200,
              height: 100,
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
                    child: Text('BACK')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

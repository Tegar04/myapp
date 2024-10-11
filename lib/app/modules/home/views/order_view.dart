import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class OrderView extends GetView<HomeController> {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.toNamed('/welcome');
            }),
        title: Text('Order'),
        centerTitle: true,
        actions: [
          // Menambahkan widget kosong untuk menyeimbangkan tampilan
          SizedBox(width: 48), // Sesuaikan lebar ini jika perlu
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildOrderDetail(),
          _buildStoreAddress(),
          _buildProductItem(),
          _buildDiscountSection(),
          _buildPaymentSummary(),
          _buildPaymentMethod(),
          _buildOrderButton(),
        ],
      ),
    );
  }

  Widget _buildOrderDetail() {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            'Order Detail',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildStoreAddress() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Store Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Jl. Kpg Sutoyo'),
            Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.'),
          ],
        ),
      ),
    );
  }

  Widget _buildProductItem() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              'assets/hotcig_r234.jpg', // Pastikan path ini benar
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hotcig R234',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('VAPEBOSS'),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: controller.decrementQuantity,
                ),
                Obx(() => Text('${controller.quantity.value}')),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: controller.incrementQuantity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiscountSection() {
    return Card(
      child: InkWell(
        onTap: () {
          print('Discount section tapped'); // Debugging log
          Get.toNamed('/voucher');
        },
        child: ListTile(
          title: Text('1 Discount is Applied'),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }

  Widget _buildPaymentSummary() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment Summary',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price'),
                Obx(() =>
                    Text('\$${controller.price.value.toStringAsFixed(2)}')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discount'),
                Obx(() =>
                    Text('\$${controller.discount.value.toStringAsFixed(2)}')),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                Obx(() => Text('\$${controller.total.value.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod() {
    return Card(
      child: InkWell(
        onTap: () {
          print('Payment method tapped'); // Debugging log
          Get.toNamed('/payment'); // Navigasi ke PaymentView
        },
        child: ListTile(
          leading: Icon(Icons.payment),
          title: Text('Cash/QRIS'),
          subtitle: Text('\$25.00'),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }

  Widget _buildOrderButton() {
    return ElevatedButton(
      child: Text('Order'),
      onPressed: () {
        Get.toNamed('/scan');
        // Implement order functionality
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class PaymentView extends GetView<HomeController> {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text('Payment'),
        centerTitle: true,
        actions: [
          SizedBox(width: 48),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildPaymentMethods(),
                Divider(),
                _buildPaymentSummary(),
              ],
            ),
          ),
          _buildDoneButton(),
        ],
      ),
    );
  }

  Widget _buildPaymentMethods() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Select Your Payment Method',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        
        SizedBox(height: 12),
        _buildPaymentMethodButton('QRIS', Colors.orange),
        SizedBox(height: 12),
        _buildPaymentMethodButton('CASH', Colors.white10),
      ],
    );
  }

  Widget _buildPaymentMethodButton(String method, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          method,
          style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }

  Widget _buildPaymentSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Price'),
            Text('\$26.35'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Discount'),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$26.35 ',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: '\$25.00',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDoneButton() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          // Navigate back to HomeView
          Get.toNamed('/home'); // Use GetX to navigate to the home route
        },
        child: Text('Done'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

class HomeController extends GetxController {
  final categories = ['All Vape', 'Liquid', 'Accessories', 'Atomizer'].obs;
  final selectedCategory = 'All Vape'.obs;

  final products = [
    {
      "name": "Hotcig R234",
      "brand": "VAPEBOSS",
      "price": 26.35,
      "image": "hotcig_r234.jpg",
      "category": "Vape"
    },
    {
      "name": "TRML T200",
      "brand": "THERMAL X INVERSE",
      "price": 29.34,
      "image": "trml_t200.jpg",
      "category": "Vape"
    },
    {
      "name": "Hexohm V3",
      "brand": "VAPEBOSS",
      "price": 180.00,
      "image": "hexom_v3.jpg",
      "category": "Vape"
    },
    {
      "name": "Centaurus M200",
      "brand": "Lost Vape",
      "price": 129.99,
      "image": "centaurus_m200.jpg",
      "category": "Vape"
    },
  ].obs;

  // Tambahkan metode ini
  void setSelectedCategory(String category) {
    selectedCategory.value = category;
  }

  List<Map<String, dynamic>> get filteredProducts {
    if (selectedCategory.value == 'All Vape') {
      return products;
    } else {
      return products
          .where((product) => product['category'] == selectedCategory.value)
          .toList();
    }
  }
}

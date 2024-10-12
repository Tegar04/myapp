import 'package:get/get.dart';
import 'package:myapp/app/modules/home/views/accessories_view.dart';
import 'package:myapp/app/modules/home/views/atomizer_view.dart';
import 'package:myapp/app/modules/home/views/home_view.dart';
import 'package:myapp/app/modules/home/views/liquid_view.dart';

abstract class AppRoutes {
  static const ORDER = '/order';
  static const VOUCHER = '/voucher'; // Ensure this is correctly defined
  static const PAYMENT = '/payment';
  static const SCAN = '/scan';
  static const DONE = '/done';
  static const WELCOME = '/welcome';
  static const LOGINAS = '/loginas';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const VERIF = '/verif';
  static const SUKSES = '/sukses';
  static const EMAIL = '/email';
  static const ECODE = '/ecode';
  static const PASSWORD = '/password';
  static const HOME = '/home';
  static const ADMIN = '/admin';
  static const MEMBERLIST = '/memberlist';
  static const INPUT = '/input';
  static const STOCK = '/stock';
  static const DETAIL = '/detail';
  static const CART = '/cart';
  static const NOTIFICATION = '/notification';
  static const WISHLIST = '/wishlist';
  static const DISCOUNT = '/discount';
  static const EDISCOUNT = '/ediscount';
  static const DISCOUNTSUKSES = '/discountsukses';
  static const HOME2 = '/home2';
  static const LIQUID = '/liquid';
  static const ATOMIZER = '/atomizer';
  static const ACCESSORIES = '/accessories';
  static const String home = '/home';
  static const String home2 = '/home2'; // Ganti dengan kategori yang sesuai
  static const String liquid = '/liquid'; // Rute untuk Liquid
  static const String accessories = '/accessories'; // Rute untuk Accesoris
  static const String atomizers = '/atomizers'; // Rute untuk Atomizer

  static List<GetPage> pages = [
    GetPage(name: home, page: () => HomeView()),

    GetPage(name: liquid, page: () => LiquidView()), // LiquidView
    GetPage(
        name: accessories, page: () => AccessoriesView()), // AccessoriesView
    GetPage(name: atomizers, page: () => AtomizerView()), // AtomizerView
  ];
}

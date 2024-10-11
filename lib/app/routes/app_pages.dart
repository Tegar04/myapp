import 'package:get/get.dart';
import 'package:myapp/app/modules/home/bindings/home_binding.dart';
import 'package:myapp/app/modules/home/views/done_view.dart';
import 'package:myapp/app/modules/home/views/order_view.dart';
import 'package:myapp/app/modules/home/views/payment_view.dart';
import 'package:myapp/app/modules/home/views/scan_view.dart';
import 'package:myapp/app/modules/home/views/voucher_view.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => OrderView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.VOUCHER, // Ensure this route is defined
      page: () => VoucherView(), // Add your VoucherView here
    ),
    GetPage(
      name: AppRoutes.PAYMENT, // Define the new route for PaymentView
      page: () => PaymentView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SCAN, // Define the new route for PaymentView
      page: () => ScanView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.DONE, // Define the new route for PaymentView
      page: () => DoneView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),


  ];
}

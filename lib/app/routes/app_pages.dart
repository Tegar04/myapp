import 'package:get/get.dart';
import 'package:myapp/app/modules/home/bindings/home_binding.dart';
import 'package:myapp/app/modules/home/views/order_view.dart';
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

  ];
}

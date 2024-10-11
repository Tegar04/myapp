import 'package:get/get.dart';
import 'package:myapp/app/modules/home/bindings/order_binding.dart';
import 'package:myapp/app/modules/home/views/done_view.dart';
import 'package:myapp/app/modules/home/views/login_view.dart';
import 'package:myapp/app/modules/home/views/loginas_view.dart';
import 'package:myapp/app/modules/home/views/order_view.dart';
import 'package:myapp/app/modules/home/views/payment_view.dart';
import 'package:myapp/app/modules/home/views/scan_view.dart';
import 'package:myapp/app/modules/home/views/signup_view.dart';
import 'package:myapp/app/modules/home/views/sukses_view.dart';
import 'package:myapp/app/modules/home/views/verif_view.dart';
import 'package:myapp/app/modules/home/views/voucher_view.dart';
import 'package:myapp/app/modules/home/views/welcome_view.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.ORDER,
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
    GetPage(
      name: AppRoutes.WELCOME, // Define the new route for PaymentView
      page: () => WelcomeView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.LOGINAS, // Define the new route for PaymentView
      page: () => LoginasView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.LOGIN, // Define the new route for PaymentView
      page: () => LoginView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SIGNUP, // Define the new route for PaymentView
      page: () => SignupView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SUKSES, // Define the new route for PaymentView
      page: () => SuksesView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.VERIF, // Define the new route for PaymentView
      page: () => VerifView(),
      binding: HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),


  ];
}

import 'package:get/get.dart';
import 'package:myapp/app/modules/article_detail/bindings/article_detail_bindings.dart';
import 'package:myapp/app/modules/article_detail/views/article_detail_view.dart';
import 'package:myapp/app/modules/article_detail/views/article_detail_web_view.dart';
import 'package:myapp/app/modules/get_connect/bindings/get_connect_binding.dart';
import 'package:myapp/app/modules/get_connect/views/get_connect_view.dart';
import 'package:myapp/app/modules/home/bindings/order_binding.dart';
import 'package:myapp/app/modules/home/views/accessories_view.dart';
import 'package:myapp/app/modules/home/views/atomizer_view.dart';
import 'package:myapp/app/modules/home/views/cart_view.dart';
import 'package:myapp/app/modules/home/views/detail_view.dart';
import 'package:myapp/app/modules/home/views/discount_view.dart';
import 'package:myapp/app/modules/home/views/discountsukses_view.dart';
import 'package:myapp/app/modules/home/views/done_view.dart';
import 'package:myapp/app/modules/home/views/ecode_view.dart';
import 'package:myapp/app/modules/home/views/editdiscount_view.dart';
import 'package:myapp/app/modules/home/views/email_view.dart';

import 'package:myapp/app/modules/home/views/home_view.dart';
import 'package:myapp/app/modules/home/views/inputmembers_view.dart';
import 'package:myapp/app/modules/home/views/liquid_view.dart';
import 'package:myapp/app/modules/home/views/login_view.dart';
import 'package:myapp/app/modules/home/views/loginas_view.dart';
import 'package:myapp/app/modules/home/views/admin_view.dart';
import 'package:myapp/app/modules/home/views/memberslist_view.dart';
import 'package:myapp/app/modules/home/views/notification_view.dart';
import 'package:myapp/app/modules/home/views/order_view.dart';
import 'package:myapp/app/modules/home/views/password_view.dart';
import 'package:myapp/app/modules/home/views/payment_view.dart';
import 'package:myapp/app/modules/home/views/scan_view.dart';
import 'package:myapp/app/modules/home/views/signup_view.dart';
import 'package:myapp/app/modules/home/views/stock_view.dart';
import 'package:myapp/app/modules/home/views/sukses_view.dart';
import 'package:myapp/app/modules/home/views/verif_view.dart';
import 'package:myapp/app/modules/home/views/voucher_view.dart';
import 'package:myapp/app/modules/home/views/welcome_view.dart';
import 'package:myapp/app/modules/home/views/wishlist_view.dart';
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
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SCAN, // Define the new route for PaymentView
      page: () => ScanView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.DONE, // Define the new route for PaymentView
      page: () => DoneView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.WELCOME, // Define the new route for PaymentView
      page: () => WelcomeView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.LOGINAS, // Define the new route for PaymentView
      page: () => LoginasView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.LOGIN, // Define the new route for PaymentView
      page: () => LoginView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SIGNUP, // Define the new route for PaymentView
      page: () => SignupView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.SUKSES, // Define the new route for PaymentView
      page: () => SuksesView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.VERIF, // Define the new route for PaymentView
      page: () => VerifView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.EMAIL, // Define the new route for PaymentView
      page: () => EmailView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.ECODE, // Define the new route for PaymentView
      page: () => EcodeView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.PASSWORD, // Define the new route for PaymentView
      page: () => PasswordView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.HOME, // Define the new route for PaymentView
      page: () => HomeView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.ADMIN, // Define the new route for PaymentView
      page: () => AdminView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.MEMBERLIST, // Define the new route for PaymentView
      page: () => MemberlistView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.INPUT, // Define the new route for PaymentView
      page: () => InputMView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.STOCK, // Define the new route for PaymentView
      page: () => StockView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.DETAIL, // Define the new route for PaymentView
      page: () => DetailView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.CART, // Define the new route for PaymentView
      page: () => CartView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.NOTIFICATION, // Define the new route for PaymentView
      page: () => NotificationView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.WISHLIST, // Define the new route for PaymentView
      page: () => WishlistView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.DISCOUNT, // Define the new route for PaymentView
      page: () => DiscountView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.EDISCOUNT, // Define the new route for PaymentView
      page: () => EditdiscountView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.DISCOUNTSUKSES, // Define the new route for PaymentView
      page: () => DiscountsuksesView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.LIQUID, // Define the new route for PaymentView
      page: () => LiquidView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.ATOMIZER, // Define the new route for PaymentView
      page: () => AtomizerView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: AppRoutes.ACCESSORIES, // Define the new route for PaymentView
      page: () => AccessoriesView(),
      binding:
          HomeBinding(), // You can create a separate binding for PaymentView if needed
    ),
    GetPage(
      name: '/detail',
      page: () => DetailView(),
    ),
    GetPage(
        name: AppRoutes.GETCONNECT,
        page: () => const GetConnectView(),
        binding: GetConnectBinding()),
    GetPage(
        name: AppRoutes.ARTICLE_DETAILS,
        page: () => ArticleDetailPage(article: Get.arguments),
        binding: ArticleDetailBinding()),
    GetPage(
        name: AppRoutes.ARTICLE_DETEAILS_WEBVIEW,
        page: () => ArticleDetailWebView(article: Get.arguments),
        binding: ArticleDetailBinding())
  ];
}

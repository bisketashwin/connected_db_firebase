// import 'utils/controllers/commodity_ticket_controller.dart';
// ignore_for_file: constant_identifier_names

// import 'package:connected_db_firebase/views/home_2_view.dart';
import 'package:connected_db_firebase/views/home_3_view.dart';
import 'package:connected_db_firebase/views/log_in_view.dart';

import 'app_routes.dart';
import 'package:get/get.dart';

import 'views/add_commodity_details_view.dart';

// import 'utils/controllers/user_controller.dart';
// import 'views/home_view.dart'; // Import for GetX

// IMP: Get X to work: this file is important

class AppScreens {
  static const INITIAL = Routes.LOGIN;
  static final List<GetPage> routes = [
    // GetPage(name: Routes.THEM_TEST, page: () => const themingTest()),
    // GetPage(name: Routes.MYLAYOUT1, page: () => const MyLayout1()),
    // GetPage(name: Routes.MYLAYOUT2, page: () => const MyLayout2()),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginFormView(),
    ),
    // GetPage(name: Routes.SIGNUP, page: () => SignUpView()),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView3(),
    ),
    GetPage(
      name: Routes.ADD_COMM_DETAILS,
      page: () => AddCommodityDetailsView(),
    )
    // GetPage(name: Routes.SETTINGS, page: () => const Settings()),
    // GetPage(name: Routes.PROFILE_EDIT, page: () => const ProfileEdit()),
    // GetPage(name: Routes.TAB1_SCREEN1, page: () => const Tab1View()),
    // GetPage(name: Routes.TAB1_SCREEN2, page: () => const Tab2View()),
    // GetPage(name: Routes.TAB1_SCREEN3, page: () => const Tab3View()),
    // ... other pages name: Routes.TAB1_SCREEN3 comes from app_routes.dart page is actual screen dart page the widget name in ithe dart file
  ];
}

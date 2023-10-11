// main.dart

import 'package:flutter/material.dart';
import 'package:connected_db_firebase/utils/pre_created_data/users_data_dummy.dart';
import 'package:provider/provider.dart';
import 'app_views.dart';
import 'theme/my_new_theme.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_firestore/firebase_firestore.dart';

import 'utils/models/models.dart';

/// models
import 'utils/pre_created_data/all_dummy_data.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // Create dummy commodity tickets only once.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      createDummyCommodityTickets(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Add the `const` keyword to the constructor invocation.
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: myLightTheme.copyWith(useMaterial3: true),
      darkTheme: myDarkTheme.copyWith(useMaterial3: true),
      initialRoute: AppScreens.INITIAL,
      getPages: AppScreens.routes,
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CommodityTicketController>(
            create: (_) => CommodityTicketController()),
        ChangeNotifierProvider<FarmAddressController>(
            create: (_) => FarmAddressController()),
        ChangeNotifierProvider<WarehouseAddressController>(
            create: (_) => WarehouseAddressController()),
        ChangeNotifierProvider<CommodityOwnerController>(
            create: (_) => CommodityOwnerController()),
        ChangeNotifierProvider<CommodityLotController>(
            create: (_) => CommodityLotController()),
        ChangeNotifierProvider<GoodsVehicleController>(
            create: (_) => GoodsVehicleController()),
        ChangeNotifierProvider<UserController>(create: (_) => UserController()),
      ],
      child: const MyApp(),
    ),
  );
}

class DummyCommodityTicketCreator extends StatelessWidget {
  const DummyCommodityTicketCreator({super.key});

  @override
  Widget build(BuildContext context) {
    // Create dummy commodity tickets.
    createDummyCommodityTickets(context);

    return Container();
  }
}

void createDummyCommodityTickets(BuildContext context) {
  FarmAddressController farmAddressController =
      Provider.of<FarmAddressController>(context, listen: false);
  farmAddressController.addFarmAddress(FarmAddress1());
  farmAddressController.addFarmAddress(FarmAddress2());
  farmAddressController.addFarmAddress(FarmAddress3());
  farmAddressController.addFarmAddress(FarmAddress4());

  WarehouseAddressController warehouseAddressController =
      Provider.of<WarehouseAddressController>(context, listen: false);
  warehouseAddressController.addWarehouseAddress(WarehouseAddress1());
  warehouseAddressController.addWarehouseAddress(WarehouseAddress2());
  warehouseAddressController.addWarehouseAddress(WarehouseAddress3());
  warehouseAddressController.addWarehouseAddress(WarehouseAddress4());

  CommodityOwnerController commodityOwnerController =
      Provider.of<CommodityOwnerController>(context, listen: false);
  // commodityOwnerController.commodityOwners();
  commodityOwnerController.addCommodityOwner(commodityOwner1());
  commodityOwnerController.addCommodityOwner(commodityOwner2());
  commodityOwnerController.addCommodityOwner(commodityOwner3());
  commodityOwnerController.addCommodityOwner(commodityOwner4());

  UserController userController =
      Provider.of<UserController>(context, listen: false);
  // commodityOwnerController.commodityOwners();
  userController.addUser(user1());
  userController.addUser(user2());
  userController.addUser(user3());
  userController.addUser(user4());

  // Get an instance of the CommodityTicketController.
  CommodityTicketController commodityTicketController =
      Provider.of<CommodityTicketController>(context, listen: false);
  // Add the dummy commodity tickets.
  commodityTicketController.addCommodityTicket(commodityTicket1());
  commodityTicketController.addCommodityTicket(commodityTicket2());
  commodityTicketController.addCommodityTicket(commodityTicket3());
  commodityTicketController.addCommodityTicket(commodityTicket4());
  commodityTicketController.addCommodityTicket(commodityTicket5());
  commodityTicketController.addCommodityTicket(commodityTicket6());
  commodityTicketController.addCommodityTicket(commodityTicket7());
  commodityTicketController.addCommodityTicket(commodityTicket8());
  commodityTicketController.addCommodityTicket(commodityTicket9());
  commodityTicketController.addCommodityTicket(commodityTicket10());

  List<CommodityTicket> commodityTickets =
      Provider.of<CommodityTicketController>(context, listen: false)
          .commodityTickets;

  //debugPrint('checking if the list is created ${commodityTickets.length}');

  // GoodsVehicleController goodsVehicleController =
  //     Provider.of<GoodsVehicleController>(context, listen: false);
  //     goodsVehicleController.addGoodsVehicle(good)
}

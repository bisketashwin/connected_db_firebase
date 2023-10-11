// import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../views/log_in_view.dart';
import 'commodity_thumbs.dart';

class MyDrawer1 extends StatelessWidget {
  const MyDrawer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(192),
        child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            listOfCommodityThumbs()['default']!,
                            width: 100,
                          )),
                      Text('User Name'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.solidAddressCard),
                  title: const Text('Your Profile Edit'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.buildingWheat),
                  title: const Text('your Comapny'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.solidAddressCard),
                  title: const Text('Your Profile Edit'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.buildingWheat),
                  title: const Text('your Comapny'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.solidAddressCard),
                  title: const Text('Your Profile Edit'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.buildingWheat),
                  title: const Text('your Comapny'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.solidAddressCard),
                  title: const Text('Your Profile Edit'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const FaIcon(FontAwesomeIcons.buildingWheat),
                  title: const Text('your Comapny'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () => Page1(),
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 172, 172, 172),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  onTap: () {
                    Get.offAll(() => LoginFormView());
                  },
                  leading: const FaIcon(FontAwesomeIcons.rightFromBracket),
                  title: const Text('Log Out'),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class Page1 {}

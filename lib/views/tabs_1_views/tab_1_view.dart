import 'package:flutter/material.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key, required this.title});

  final String title;

  @override
  State<Tab1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Tab1> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          /////// welcome message
          WelcomeMessage(),
          CreateCommodityCards2(),

          ///Commodity Cards the drag effect still there on scroll of cards need to fix it later
          /// cards
        ],
      ),
    );
  }
}

class WelcomeMessage extends StatefulWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  _WelcomeMessageState createState() => _WelcomeMessageState();
}

class _WelcomeMessageState extends State<WelcomeMessage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: ListView(
        primary: false, // makes scrollablity false
        shrinkWrap: true,
        children: [
          RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.headlineMedium,
                children: [
                  const TextSpan(
                      text: 'Hi ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  WidgetSpan(
                      child: Icon(
                    Icons.waving_hand,
                    color: Theme.of(context).primaryColor,
                  )),
                  const TextSpan(text: '\n'),
                  const TextSpan(
                      text:
                          'welcone you can manage and trade commodities here!'),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(
              text: TextSpan(
                  // margin: const EdgeInsets.only(top: 10),
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                        text:
                            'Add your commodity to ware house with help of our expert end to end service or by using our services when reqired at your comfort. get started')
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateCommodityCards extends StatefulWidget {
  const CreateCommodityCards({Key? key}) : super(key: key);

  @override
  _CreateCommodityCardsState createState() => _CreateCommodityCardsState();
}

class _CreateCommodityCardsState extends State<CreateCommodityCards> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false, // makes scrollablity false
      // physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 15, right: 20),
      children: const [
        CommodityCard1(
            icon: Icons.calculate,
            width: 300,
            header: '20 MT Spanish Cotton',
            bodyText:
                'Moaterial is in transit will reach the ware house on 19th Sep'),
        CommodityCard1(
            icon: Icons.calculate,
            width: 300,
            header: '20 MT Spanish Cotton',
            bodyText:
                'Moaterial is in transit will reach the ware house on 19th Sep'),
      ],
    );
  }
}

class CreateCommodityCards2 extends StatefulWidget {
  const CreateCommodityCards2({Key? key}) : super(key: key);

  @override
  _CreateCommodityCards2State createState() => _CreateCommodityCards2State();
}

class _CreateCommodityCards2State extends State<CreateCommodityCards2> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 15, right: 20),
      children: const [
        CommodityCard2(
            inOut: 'out',
            // width: 300,
            header: '20 MT Spanish Cotton',
            bodyText:
                'Moaterial is in transit will reach the ware house on 19th Sep'),
        CommodityCard2(
            inOut: 'in',
            // width: 300,
            header: '20 MT Spanish Cotton',
            bodyText:
                'Moaterial is in transit will reach the ware house on 19th Sep'),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:connected_db_firebase/theme/custom_color.dart';

class SubSiew1 extends StatefulWidget {
  const SubSiew1({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SubSiew1> {
  // Create two lists to store the items in the two list views.
  List<String> list1 = ["Item 1", "Item 2", "Item 3"];
  List<String> list2 = ["Item 4", "Item 5", "Item 6"];

  // Create two lists to store the visibility state of the items in the two list views.
  final List<bool> _showlist1 = [
    false,
    false,
    false,
  ];

  final List<bool> _showlist2 = [
    false,
    false,
    false,
  ];

  // Create two list views, one for each list.
  Widget listView1() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: list1.length,
      itemBuilder: (context, index) {
        return myCard(type: 'only1', index: index, myList: _showlist1);
      },
    );
  }

  Widget listView2() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: list2.length,
      itemBuilder: (context, index) {
        return myCard(type: 'any', index: index, myList: _showlist2);
      },
    );
  }

  Widget myCard({type = 'any', index, required myList}) {
    // var myList;
    return Card(
      child: InkWell(
        onTap: () {
          switch (type) {
            case 'only1':
              for (int i = 0; i < myList.length; i++) {
                myList[i] = i == index;
              }
              break;
            default:
              myList[index] = !myList[index];
          }

          // Set the state. wihtout this the UI would not refresh
          setState(() {});
        },
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(list2[index]),
            Visibility(
              visible: myList[index],
              child: const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text("This is a hidden text string."),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  // Create a parent list view to contain the two list views.
  Widget parentListView() {
    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Bellow any one of the 3 cards would expand',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                // color: color,
              ),
        ),
        listView1(),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Bellow any or all card can be expanded',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                // color: color,
              ),
        ),
        listView2(),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            'Thats it for now',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  // color: color,
                ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return parentListView();
  }
}

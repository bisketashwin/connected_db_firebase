import 'package:flutter/material.dart';

class DummyLongList extends StatelessWidget {
  const DummyLongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.red,
          height: 270,
          child: Center(child: Text("wow its working?")),
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
      ],
    );
  }
}

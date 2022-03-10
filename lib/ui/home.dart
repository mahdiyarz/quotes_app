import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('data')],
    ));
  }
}

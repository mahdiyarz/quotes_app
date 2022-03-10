import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List<String> qoutes = [
    "Change your thoughts and you change your world.",
    "Imagination is everything. It is the preview of life’s coming attractions.",
    "Happiness is not something ready made. It comes from your own actions."
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(qoutes[index % qoutes.length]),
        TextButton.icon(
            onPressed: _showNextQuote,
            icon: Icon(Icons.skip_next),
            label: Text('Next Quote'))
      ],
    ));
  }

  void _showNextQuote() {
    setState(() {
      index += 1;
    });
  }
}

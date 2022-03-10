import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    List<String> qoutes = [
      "Change your thoughts and you change your world.",
      "Imagination is everything. It is the preview of life’s coming attractions.",
      "Happiness is not something ready made. It comes from your own actions."
    ];
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(qoutes[0]),
        TextButton.icon(
            onPressed: _showNextQuote,
            icon: Icon(Icons.skip_next),
            label: Text('Next Quote'))
      ],
    ));
  }

  void _showNextQuote() {}
}

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
          Container(
            width: 350,
            height: 200,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
            child: Center(
              child: Text(
                qoutes[index % qoutes.length],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          const Divider(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: _showNextQuote,
            icon: const Icon(Icons.skip_next),
            label: const Text('Next Quote'),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  void _showNextQuote() {
    setState(() {
      index += 1;
    });
  }
}

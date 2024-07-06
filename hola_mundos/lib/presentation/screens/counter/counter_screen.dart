import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle())
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            child: const Icon(Icons.refresh_rounded),
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

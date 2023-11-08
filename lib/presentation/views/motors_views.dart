import 'package:flutter/material.dart';

class MotorsViews extends StatefulWidget {
  const MotorsViews({super.key});

  @override
  State<MotorsViews> createState() => _MotorsViewsState();
}

class _MotorsViewsState extends State<MotorsViews> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('contador motor: $count'),
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Icon(Icons.add))
        ],
      ),
    );
  }
}

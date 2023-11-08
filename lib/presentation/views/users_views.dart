import 'package:flutter/material.dart';

class UsersViews extends StatefulWidget {
  const UsersViews({super.key});

  @override
  State<UsersViews> createState() => _UsersViewsState();
}

class _UsersViewsState extends State<UsersViews> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('contador users: $count'),
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

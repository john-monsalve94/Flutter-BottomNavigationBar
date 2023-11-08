import 'package:bottom_navigation_bar/presentation/views/motors_views.dart';
import 'package:bottom_navigation_bar/presentation/views/users_views.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screens = [MotorsViews(),UsersViews()];
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.two_wheeler),
            activeIcon: Icon(Icons.motorcycle),
            label: 'Motors',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_rounded),
            activeIcon: Icon(Icons.person_3),
            label: 'Users',
            backgroundColor: colors.tertiary,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class MainScreen extends StatelessWidget {
  final StatefulNavigationShell child;
  const MainScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: child.currentIndex,
        onTap: (index) {
          child.goBranch(
            index,
            initialLocation: index == child.currentIndex,
          );
          //TODO: Implement switching pages
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_outlined),
            label: 'Page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page3',
          ),
        ],
      ),
    );
  }
}

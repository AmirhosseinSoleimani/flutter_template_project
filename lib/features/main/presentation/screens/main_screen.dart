import 'package:eks_khedamtresan/di/di_setup.dart';
import 'package:eks_khedamtresan/features/main/presentation/bloc/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell child;

  const MainScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<MainCubit>();
    return ValueListenableBuilder(
        valueListenable: cubit.notifier,
        builder: (BuildContext context, value, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Main Screen'),
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
                cubit.notifier.value = index;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
    );
  }
}

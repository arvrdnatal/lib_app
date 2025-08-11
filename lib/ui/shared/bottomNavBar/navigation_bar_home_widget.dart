import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationBarHomeWidget extends StatelessWidget {
  const NavigationBarHomeWidget({super.key, required this.navShell});

  final StatefulNavigationShell navShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: navShell.goBranch,
          selectedIndex: navShell.currentIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.house), label: 'home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'meu perfil'),
          ]),
      body: navShell,
    );
  }
}

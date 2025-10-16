import 'package:flutter/material.dart';
import 'driver_home_page.dart';
import 'pages/map_page.dart';

class DriverTabs extends StatefulWidget {
  const DriverTabs({super.key});

  @override
  State<DriverTabs> createState() => _DriverTabsState();
}

class _DriverTabsState extends State<DriverTabs> {
  int _index = 0;

  final _pages = const [
    DriverHomePage(),
    DriverMapPage(),
    _PlaceholderPage(title: 'İş İlanları'),
    _PlaceholderPage(title: 'Profil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Ev'),
          NavigationDestination(icon: Icon(Icons.map_outlined), label: 'Harita'),
          NavigationDestination(icon: Icon(Icons.list_alt_outlined), label: 'İlanlar'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
        onDestinationSelected: (i) => setState(() => _index = i),
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  final String title;
  const _PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: Text('Yakında')),
    );
  }
}

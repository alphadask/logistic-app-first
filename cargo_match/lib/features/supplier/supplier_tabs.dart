import 'package:flutter/material.dart';
import 'supplier_home_page.dart';
import 'pages/map_page.dart';

class SupplierTabs extends StatefulWidget {
  const SupplierTabs({super.key});

  @override
  State<SupplierTabs> createState() => _SupplierTabsState();
}

class _SupplierTabsState extends State<SupplierTabs> {
  int _index = 0;

  final _pages = const [
    SupplierHomePage(),
    SupplierMapPage(),
    _PlaceholderPage(title: 'Yazılarım'),
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
          NavigationDestination(icon: Icon(Icons.article_outlined), label: 'Yazılarım'),
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

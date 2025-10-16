import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoleSelectPage extends StatelessWidget {
  const RoleSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rol Seçin')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/driver'),
              child: const Text('Sürücü'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/supplier'),
              child: const Text('Tedarikçi'),
            ),
          ],
        ),
      ),
    );
  }
}

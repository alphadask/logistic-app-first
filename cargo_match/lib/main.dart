import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: CargoMatchApp()));
}

class CargoMatchApp extends StatelessWidget {
  const CargoMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = AppRouter.create();
    return MaterialApp.router(
      title: 'Cargo Match',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

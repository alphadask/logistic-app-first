import 'package:flutter/material.dart';

class DriverHomePage extends StatelessWidget {
  const DriverHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ev (Sürücü)')),
      body: const Center(child: Text('Maliyet hesaplayıcı, aylık özet, e-Fatura')),
    );
  }
}

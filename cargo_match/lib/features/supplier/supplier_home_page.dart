import 'package:flutter/material.dart';

class SupplierHomePage extends StatelessWidget {
  const SupplierHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ev (Tedarikçi)')),
      body: const Center(child: Text('Gönderiler, fatura geçmişi, kazanç istatistikleri')),
    );
  }
}

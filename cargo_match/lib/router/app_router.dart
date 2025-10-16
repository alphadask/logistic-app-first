import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/enums/user_role.dart';
import '../features/auth/role_select_page.dart';
import '../features/driver/driver_tabs.dart';
import '../features/supplier/supplier_tabs.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      initialLocation: '/role',
      routes: [
        GoRoute(
          path: '/role',
          builder: (context, state) => const RoleSelectPage(),
        ),
        GoRoute(
          path: '/driver',
          builder: (context, state) => const DriverTabs(),
        ),
        GoRoute(
          path: '/supplier',
          builder: (context, state) => const SupplierTabs(),
        ),
      ],
    );
  }

  static void goToRole(BuildContext context, UserRole role) {
    switch (role) {
      case UserRole.driver:
        context.go('/driver');
        break;
      case UserRole.supplier:
        context.go('/supplier');
        break;
    }
  }
}

import 'dart:async';

import '../../models/app_user.dart';
import '../user_repository.dart';

class MemoryUserRepository implements UserRepository {
  final Map<String, AppUser> _store = {};

  @override
  Future<AppUser?> getById(String id) async => _store[id];

  @override
  Future<void> upsert(AppUser user) async {
    _store[user.id] = user;
  }

  @override
  Future<List<AppUser>> pendingApprovals() async {
    return _store.values.where((u) => !u.isApproved).toList();
  }
}

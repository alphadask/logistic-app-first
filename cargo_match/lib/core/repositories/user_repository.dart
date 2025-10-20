import '../models/app_user.dart';

abstract class UserRepository {
  Future<AppUser?> getById(String id);
  Future<void> upsert(AppUser user);
  Future<List<AppUser>> pendingApprovals();
}

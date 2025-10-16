import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/user_repository.dart';
import '../repositories/job_repository.dart';
import '../repositories/offer_repository.dart';
import '../repositories/chat_repository.dart';
import '../repositories/memory/memory_user_repository.dart';
import '../repositories/memory/memory_job_repository.dart';
import '../repositories/memory/memory_offer_repository.dart';
import '../repositories/memory/memory_chat_repository.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return MemoryUserRepository();
});

final jobRepositoryProvider = Provider<JobRepository>((ref) {
  return MemoryJobRepository();
});

final offerRepositoryProvider = Provider<OfferRepository>((ref) {
  return MemoryOfferRepository();
});

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  return MemoryChatRepository();
});

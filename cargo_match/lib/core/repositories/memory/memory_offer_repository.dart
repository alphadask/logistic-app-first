import 'dart:async';

import '../../enums/offer_status.dart';
import '../../models/offer.dart';
import '../offer_repository.dart';

class MemoryOfferRepository implements OfferRepository {
  final Map<String, Offer> _store = {};

  @override
  Future<List<Offer>> listForJob(String jobId) async {
    return _store.values.where((o) => o.jobId == jobId).toList();
  }

  @override
  Future<void> submit(Offer offer) async {
    _store[offer.id] = offer;
  }

  @override
  Future<void> updateStatus(String offerId, String status) async {
    final existing = _store[offerId];
    if (existing == null) return;
    final next = OfferStatus.values.firstWhere((e) => e.name == status, orElse: () => OfferStatus.pending);
    _store[offerId] = existing.copyWith(status: next);
  }
}

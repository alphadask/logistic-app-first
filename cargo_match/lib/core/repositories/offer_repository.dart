import '../models/offer.dart';

abstract class OfferRepository {
  Future<List<Offer>> listForJob(String jobId);
  Future<void> submit(Offer offer);
  Future<void> updateStatus(String offerId, String status);
}
